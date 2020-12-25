CREATE VIEW Genre_view
AS SELECT id_Genre, GenreName
FROM Genre;


CREATE VIEW Country_view
AS SELECT id_Country, CountryName
FROM Country;


CREATE VIEW Studio_view
AS SELECT id_Studio, StudioName
FROM Studio;


CREATE VIEW Author_view
AS SELECT id_Author, Firstname, Surname, Nickname, AuthorLink 
FROM Author;


CREATE VIEW AuthorReview_view
AS SELECT id_AuthorReview, Firstname, Surname, Nickname, AuthorReviewLink
FROM AuthorReview;


CREATE VIEW Editor_view
AS SELECT id_Editor, Firstname, Surname, Nickname, EditorLink
FROM Editor;


CREATE VIEW ReviewInfo_view
AS SELECT ReviewNumber, DataPublication, Link
FROM Review;


CREATE VIEW OriginalRelease_view
AS SELECT EngilshName, ReleaseOriginal, id_Status
FROM Original;


CREATE VIEW AnimeRelease_view
AS SELECT OriginalName, ReleaseAnime, id_Season, id_Season1, id_Season2, id_Season3, id_Status
FROM Anime;


CREATE VIEW OriginalGenre_view
AS SELECT EngilshName, id_Genre, id_Genre1, id_Genre2, id_Genre3, id_Genre4, id_Genre5
FROM Original;


CREATE VIEW AnimeGenre_view
AS SELECT OriginalName, id_Genre, id_Genre1, id_Genre2, id_Genre3, id_Genre4, id_Genre5
FROM Anime;


CREATE VIEW AnimeReview_view
AS SELECT Anime.OriginalName, Review.ReviewNumber, Review.DataPublication, AuthorReview.NickName, Review.Link, AuthorReview.AuthorReviewLink
FROM Anime, Review, AuthorReview
WHERE Anime.id_Review = Review.id_Review AND Review.id_AuthorReview = AuthorReview.id_AuthorReview;


CREATE VIEW FullAnime_view
AS SELECT Anime.OriginalName, Genre.GenreName, Anime.ReleaseAnime, TypeAnime.TypeAnimeName, Season.SeasonName, Status.StatusName, Country.CountryName, Studio.StudioName, Censorship.CensorshipName, DurationAnime.DurationName, Anime.Rating, Anime.NumberOfSeasons, Anime.NumberOfEpisodes, TypeOriginal.TypeOriginalName, Original.ReleaseOriginal, Review.ReviewNumber, Review.DataPublication, AuthorReview.NickName, Review.Link, AuthorReview.AuthorReviewLink
FROM Anime, Genre, TypeAnime, Season, Status, Country, Studio, Censorship, DurationAnime, Original, TypeOriginal, Review, AuthorReview
WHERE Anime.id_Genre = Genre.id_Genre AND Anime.id_TypeAnime = TypeAnime.id_TypeAnime AND Anime.id_Season = Season.id_Season AND Anime.id_Status = Status.id_Status AND Anime.id_Country = Country.id_Country AND Anime.id_Studio = Studio.id_Studio AND Anime.id_Censorship = Censorship.id_Censorship AND Anime.id_DurationAnime = DurationAnime.id_DurationAnime AND Anime.id_Original = Original.id_Original AND Original.id_TypeOriginal = TypeOriginal.id_TypeOriginal AND Anime.id_Review = Review.id_Review AND Review.id_AuthorReview = AuthorReview.id_AuthorReview;