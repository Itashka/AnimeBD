CREATE OR REPLACE TRIGGER Trg_Genre
BEFORE INSERT ON Genre
REFERENCES NEW AS NEW OLD AS OLD
FOR EACH ROW
BEGIN 
  SELECT Seq_Genre.NEXTVAL INTO :NEW.id_Genre FROM DUAL;
END Trg_Genre;
/


CREATE OR REPLACE TRIGGER Trg_TypeAnime
BEFORE INSERT ON TypeAnime
REFERENCES NEW AS NEW OLD AS OLD
FOR EACH ROW
BEGIN 
  SELECT Seq_TypeAnime.NEXTVAL INTO :NEW.id_TypeAnime FROM DUAL;
END Trg_TypeAnime;
/


CREATE OR REPLACE TRIGGER Trg_Season
before insert on Season 
references new as new old as OLD
for each ROW
begin
  select Seq_Season.NEXTVAL into :new.id_Season from dual;
end TRG_Season;
/


create or replace trigger Trg_Status
before insert on Status 
references new as new old as old
for each row 
begin
  select Seq_Status.NEXTVAL into :new.id_Status from dual;
end trg_Status;
/


create or replace trigger trg_Country
before insert on Country
references new as new old as OLD
for each row 
begin
  select Seq_Country.NEXTVAL into :new.id_Country from dual;
end trg_Country;
/


create or replace trigger trg_Studio
before insert on Studio
references new as new old as OLD
for each row 
begin
  select Seq_Studio.NEXTVAL into :new.id_Studio from dual;
end trg_Studio;
/


create or replace trigger trg_Censorship
before insert on Censorship
references new as new old as OLD
for each row 
begin
  select Seq_Censorship.NEXTVAL into :new.id_Censorship from dual;
end trg_Censorship;
/


create or replace trigger trg_DurationAnime
before insert on DurationAnime
references new as new old as OLD
for each row 
begin
  select Seq_DurationAnime.NEXTVAL into :new.id_DurationAnime from dual;
end trg_DurationAnime;
/


create or replace trigger trg_Author
before insert on Author
references new as new old as OLD
for each row 
begin
  select Seq_Author.NEXTVAL into :new.id_Author from dual;
end trg_Author;
/


create or replace trigger trg_TypeOriginal
before insert on TypeOriginal
references new as new old as OLD
for each row 
begin
  select Seq_TypeOriginal.NEXTVAL into :new.id_TypeOriginal from dual;
end trg_TypeOriginal;
/


create or replace trigger trg_AuthorReview
before insert on AuthorReview
references new as new old as OLD
for each row 
begin
  select Seq_AuthorReview.NEXTVAL into :new.id_AuthorReview from dual;
end trg_AuthorReview;
/


create or replace trigger trg_Editor
before insert on Editor
references new as new old as OLD
for each row 
begin
  select Seq_Editor.NEXTVAL into :new.id_Editor from dual;
end trg_Editor;
/


create or replace trigger trg_Review
before insert on Review
references new as new old as OLD
for each row 
begin
  select Seq_Review.NEXTVAL into :new.id_Review from dual;
end trg_Review;
/


create or replace trigger trg_Original
before insert on Original
references new as new old as OLD
for each row 
begin
  select Seq_Original.NEXTVAL into :new.id_Original from dual;
end trg_Original;
/


create or replace trigger trg_Anime
before insert on Anime
references new as new old as OLD
for each row 
begin
  select Seq_Anime.NEXTVAL into :new.ID from dual;
end trg_Anime;
/