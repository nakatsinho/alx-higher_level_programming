-- list all shows contained in hbtn_0d_tvshows that have no genre
-- record is in format tv_shows.title - tv_show_genres.genre_id
-- sorted in ASC order by tv_shows.title - tv_show_genres.genre_id
-- show without genre is displayed as NULL

SELECT tv_shows.title, tv_show_genres.genre_id
FROM tv_shows
LEFT OUTER JOIN tv_show_genres
ON tv_shows.id = tv_show_genres.show_id
WHERE tv_show_genres.genre_id IS NULL
ORDER BY tv_shows.title, tv_show_genres.genre_id ASC;
