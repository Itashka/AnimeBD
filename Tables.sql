CREATE TABLE Genre(
	id_Genre         NUMBER		 (2)	NOT NULL PRIMARY KEY,
	GenreName 	     varchar2    (18)   NOT NULL
);

CREATE TABLE TypeAnime(
	id_TypeAnime 	 number 	 (1)    NOT NULL PRIMARY KEY,
	TypeAnimeName 	 varchar2 	 (9)    NOT NULL
);


CREATE TABLE Season(
	id_Season 		 number 	 (1)	NOT NULL PRIMARY KEY,
	SeasonName 		 varchar2 	 (6)    NOT NULL
);


CREATE TABLE Status(
	id_Status 		 number 	 (2)    NOT NULL PRIMARY KEY,
	StatusName 		 varchar2    (9)    NOT NULL
);


CREATE TABLE Country(
	id_Country 	     number 	 (2)	NOT NULL PRIMARY KEY,
	CountryName 	 varchar2    (13)   NOT NULL
);


CREATE TABLE Studio(
	id_Studio 		 number  	 (3)	NOT NULL PRIMARY KEY,
	StudioName		 varchar2  	 (32)   NOT NULL
);


CREATE TABLE Censorship(
	id_Censorship 	 number 	 (1)	NOT NULL PRIMARY KEY,
    CensorshipName	 varchar2    (5)	NOT NULL
);


CREATE TABLE DurationAnime(
	id_DurationAnime number 	 (1)	NOT NULL PRIMARY KEY,
    DurationName 	 varchar2    (16) 	NOT NULL
);


CREATE TABLE Author(
	id_Author		 number      (4)	NOT NULL PRIMARY KEY,
	Firstname		 VARCHAR2	 (32) 	NULL,
    Surname 		 VARCHAR2	 (32) 	NULL,
	Nickname 		 VARCHAR2	 (32) 	NULL,
	AuthorLink 		 VARCHAR2    (128)	NULL
);


CREATE TABLE TypeOriginal(
	id_TypeOriginal	 NUMBER		 (1)	NOT NULL PRIMARY KEY,
	TypeOriginalName VARCHAR2	 (12)	NOT NULL
);


CREATE TABLE AuthorReview(
	id_AuthorReview	 NUMBER		 (1)	NOT NULL PRIMARY KEY,
	Firstname		 VARCHAR2	 (32) 	NULL,
    Surname 		 VARCHAR2	 (32) 	NULL,
	Nickname 		 VARCHAR2	 (32) 	NULL,
	AuthorReviewLink VARCHAR2    (128)	NULL
);


CREATE TABLE Editor(
	id_Editor	     NUMBER		 (1)	NOT NULL PRIMARY KEY,
	Firstname		 VARCHAR2	 (32) 	NULL,
    Surname 		 VARCHAR2	 (32) 	NULL,
	Nickname 		 VARCHAR2	 (32) 	NULL,
	EditorLink 			 VARCHAR2    (128)	NULL
);


CREATE TABLE Review(
	id_Review 		 number 	 (4) 	NOT NULL PRIMARY KEY,
	ReviewNumber 	 number   	 (4) 	NOT NULL,
	id_AuthorReview	 NUMBER		 (1)	NOT NULL,
	id_Editor		 NUMBER		 (1)	NULL,
    Link 			 VARCHAR2    (128)	NOT NULL,
    DataPublication  DATE 		 		NOT NULL,
	CONSTRAINT id_AuthorReviewPK FOREIGN KEY (id_AuthorReview) REFERENCES AuthorReview (id_AuthorReview),
	CONSTRAINT id_EditorPK FOREIGN KEY (id_Editor) REFERENCES Editor (id_Editor)
);


CREATE TABLE Original(
	id_Original 	 number 	 (4) 	NOT NULL PRIMARY KEY,
	EngilshName		 varchar2    (64) 	NOT NULL,
	id_Genre 		 number      (2) 	NOT NULL,
	id_Genre1 		 number      (2) 	NULL,
	id_Genre2 		 number      (2) 	NULL,
	id_Genre3 		 number      (2) 	NULL,
	id_Genre4 		 number      (2) 	NULL,
	id_Genre5 		 number      (2) 	NULL,
	id_Author		 number      (4) 	NULL,
	id_TypeOriginal  number      (1) 	NOT NULL,
	id_Status		 number      (1) 	NOT NULL,
	ReleaseOriginal  number  	 (4)	NULL,
	CONSTRAINT id_GenreOriginalPK FOREIGN KEY (id_Genre) REFERENCES Genre (id_Genre),
	CONSTRAINT id_AuthorPK FOREIGN KEY (id_Author) REFERENCES Author (id_Author),
	CONSTRAINT id_TypeOriginalPK FOREIGN KEY (id_TypeOriginal) REFERENCES TypeOriginal (id_TypeOriginal),
	CONSTRAINT id_StatusOriginalPK FOREIGN KEY (id_Status) REFERENCES Status (id_Status)
);


CREATE TABLE  Anime(
	ID				 NUMBER		 (4)	NOT NULL PRIMARY KEY,
	OriginalName 	 varchar2    (64) 	NOT NULL,
	RussianName 	 varchar2    (64) 	NULL,
	id_Genre 		 number      (2) 	NOT NULL,
	id_Genre1 		 number      (2) 	NULL,
	id_Genre2 		 number      (2) 	NULL,
	id_Genre3 		 number      (2) 	NULL,
	id_Genre4 		 number      (2) 	NULL,
	id_Genre5 		 number      (2) 	NULL,
	ReleaseAnime 	 number      (4) 	NOT NULL,
	id_TypeAnime 	 number      (1) 	NOT NULL,
	id_Season 		 number		 (1) 	NULL,
	id_Season1 		 number		 (1) 	NULL,
	id_Season2 		 number		 (1) 	NULL,
	id_Season3 		 number		 (1) 	NULL,
	id_Status 		 number		 (1) 	NOT NULL,
	id_Country 		 number		 (2) 	NOT NULL,
    id_Studio 		 number		 (3) 	NOT NULL,
	id_Censorship 	 number	 	 (1) 	NOT NULL,
	id_DurationAnime number		 (1) 	NOT NULL,
	Rating 			 number		 (3,2)  NULL,
	id_Original 	 number		 (4)    NULL,
	NumberOfSeasons  number	 	 (3) 	NULL,
	NumberOfEpisodes NUMBER  	 (4) 	NULL,
	id_Review 		 number		 (4)	NULL,
	CONSTRAINT id_GenrePK FOREIGN KEY (id_Genre) REFERENCES Genre (id_Genre),
	CONSTRAINT id_TypeAnimePK FOREIGN KEY (id_TypeAnime) REFERENCES TypeAnime (id_TypeAnime),
	CONSTRAINT id_SeasonPK FOREIGN KEY (id_Season) REFERENCES Season (id_Season),
	CONSTRAINT id_StatusPK FOREIGN KEY (id_Status) REFERENCES Status (id_Status),
	CONSTRAINT id_CountryPK FOREIGN KEY (id_Country) REFERENCES Country (id_Country),
	CONSTRAINT id_StudioPK FOREIGN KEY (id_Studio) REFERENCES Studio (id_Studio),
	CONSTRAINT id_CensorshipPK FOREIGN KEY (id_Censorship) REFERENCES Censorship (id_Censorship),
	CONSTRAINT id_DurationAnimePK FOREIGN KEY (id_DurationAnime) REFERENCES DurationAnime (id_DurationAnime),
	CONSTRAINT id_OriginalPK FOREIGN KEY (id_Original) REFERENCES Original (id_Original),
	CONSTRAINT id_Review FOREIGN KEY (id_Review) REFERENCES Review (id_Review) 
);