SELECT *FROM spotify;
-- Understanding the dataset
SELECT COUNT(*) FROM spotify;
SELECT COUNT(DISTINCT artist) FROM spotify;
SELECT COUNT(DISTINCT album) FROM spotify;
SELECT DISTINCT album_type FROM spotify;
SELECT duration_min from spotify;
SELECT MAX(duration_min) from spotify;
SELECT MIN(duration_min) from spotify;
SELECT * FROM spotify WHERE duration_min = 0;
DELETE FROM spotify WHERE duration_min =0;
SELECT * FROM spotify WHERE duration_min = 0;
SELECT DISTINCT channel FROM spotify;
SELECT DISTINCT most_played_on FROM spotify;

--Solving problem statments
-- Q1 : Retrieve the names of all tracks that have more than 1 billion streams.
SELECT COUNT(track) FROM spotify WHERE stream > 1000000000;
SELECT track FROM spotify WHERE stream > 1000000000;

-- Q2 : List all albums along with their respective artists.
SELECT album, artist FROM spotify;

-- 	Q3 : Get the total number of comments for tracks where licensed = TRUE.
SELECT SUM(comments)as total_comments FROM spotify WHERE licensed = 'true';

-- Q4 : Find all tracks that belong to the album type single.
SELECT track FROM spotify WHERE album_type = 'single';

-- Q5 : Count the total number of tracks by each artist.
SELECT artist, COUNT(*) as total_songs FROM spotify GROUP BY artist;

-- Q6 : Calculate the average danceability of tracks in each album.
SELECT * FROM spotify;
SELECT album, avg(danceability) as avg_danceability FROM spotify GROUP BY album;

-- Q7 : Find the top 5 tracks with the highest energy values.
SELECT  FROM spotify;
SELECT track, MAX (energy) FROM spotify GROUP BY track ORDER BY 2 DESC LIMIT 5;

-- Q8 : List all tracks along with their views and likes where official_video = TRUE.
SELECT track, SUM (views) as total_views, SUM (likes) as total_likes FROM spotify WHERE official_video = 'true' GROUP BY 1 ORDER BY 2 DESC LIMIT 5;

-- Q9 : For each album, calculate the total views of all associated tracks.
SELECT album, track, SUM (views) FROM spotify GROUP BY 1,2;

-- Q10 : Retrieve the track names that have been streamed on Spotify more than YouTube.
SELECT * FROM
(
    SELECT track,
        COALESCE(SUM(CASE WHEN most_played_on = 'Youtube' THEN stream END), 0) AS streamed_on_YT,
        COALESCE(SUM(CASE WHEN most_played_on = 'Spotify' THEN stream END), 0) AS streamed_on_SP
    FROM spotify
    GROUP BY track
) AS t1
WHERE streamed_on_SP > streamed_on_YT
AND streamed_on_YT <> 0;

-- Q11 : Find the top 3 most-viewed tracks for each artist.
WITH ranking_artist AS
(SELECT artist, track, SUM(views) as total_views,
DENSE_RANK() OVER(PARTITION BY artist ORDER BY SUM(views) DESC) as rank
FROM spotify
GROUP BY 1,2
ORDER BY 1,3 DESC
)
SELECT * FROM ranking_artist
WHERE rank <=3;

-- Q12 : Write a query to find tracks where the liveness score is above the average.
SELECT track, artist, liveness FROM spotify
WHERE liveness > (SELECT AVG(liveness)FROM spotify);

-- Q13 : Calculate the difference between the highest and lowest energy values for tracks in each album.
WITH cte AS (
    SELECT 
        album, 
        MAX(energy) AS highest_energy, 
        MIN(energy) AS lowest_energy 
    FROM spotify
    GROUP BY album
)
SELECT album, highest_energy - lowest_energy AS energy_difference 
FROM cte;