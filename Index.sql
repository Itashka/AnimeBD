CREATE UNIQUE INDEX IND_Genre
ON Genre (GenreName);


CREATE UNIQUE INDEX IND_TypeAnime
ON TypeAnime (TypeAnimeName);


CREATE UNIQUE INDEX IND_Season
ON Season (SeasonName);


CREATE UNIQUE INDEX IND_Status
ON Status (StatusName);


CREATE UNIQUE INDEX IND_Country
ON Country (CountryName);


CREATE UNIQUE INDEX IND_Studio
ON Studio (StudioName);


CREATE UNIQUE INDEX IND_Censorship
ON Censorship (CensorshipName);


CREATE UNIQUE INDEX IND_DurationAnime
ON DurationAnime (DurationName);


CREATE UNIQUE INDEX IND_Author
ON Author (Nickname, AuthorLink);


CREATE UNIQUE INDEX IND_TypeOriginal
ON TypeOriginal (TypeOriginalName);


CREATE UNIQUE INDEX IND_AuthorReview
ON AuthorReview (Nickname, AuthorReviewLink);


CREATE UNIQUE INDEX IND_Editor
ON Editor (Nickname, EditorLink);


CREATE UNIQUE INDEX IND_Review
ON Review (ReviewNumber, Link);