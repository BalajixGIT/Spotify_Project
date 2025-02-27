# Spotify Streaming Trends: Analyzing Music Popularity & Listener Preferences
## Overview
This project involves analyzing a Spotify dataset with various attributes about tracks, albums, and artists using SQL. It covers an end-to-end process of normalizing a denormalized dataset, performing SQL queries of varying complexity (easy, medium, and advanced), and optimizing query performance. The primary goals of the project are to practice advanced SQL skills and generate valuable insights from the dataset.

## About Dataset
The dataset was sourced from Kaggle. The data originates from Spotify, one of the world’s leading music streaming platforms. It provides detailed insights into thousands of tracks, including artist details, track names, album information, and audio features such as danceability, energy, loudness, and tempo. Additionally, it includes streaming statistics across platforms like Spotify and YouTube, making it a valuable resource for understanding music trends, listener preferences, and artist performance.

## Business Impact of Data Analysis
Business Impact of Data Analysis
1. Understanding Music Popularity & Streaming Trends
   - Identifies top streamed tracks and artists, helping record labels and artists optimize marketing strategies.
   - Analyzes most-played platforms (Spotify vs. YouTube) to determine platform-specific trends.
   - Helps artists and streaming platforms align music recommendations based on popularity.
     
2. Analyzing Song Characteristics & User Engagement
   - Evaluates the impact of danceability, energy, and tempo on track popularity.
   - Helps music producers tailor compositions based on listener preferences.
   - Assists streaming platforms in curating personalized playlists based on listener behavior.
     
3. Competitive Benchmarking & Artist Insights
   - Compares artist performance metrics to identify trends in music streaming success.
   - Helps record labels and managers strategically position new releases based on past trends.
   - Assists in identifying rising artists by analyzing early streaming success metrics.

## How This Helps Spotify & Record Labels
1. Optimized playlist curation by identifying high-engagement tracks.
2. Data-driven marketing decisions to boost artist visibility and track promotions.
3. Competitive insights to analyze and improve streaming performance.
4. Predictive analytics for identifying potential hit songs based on past performance.

## Project Workflow
1. Data Exploration (Using SQL)
    - Examined dataset structure, identifying key attributes such as track details, audio features, and streaming metrics.
    - Used SQL queries (SELECT, COUNT, DISTINCT, GROUP BY) to understand data distribution, missing values, and trends
      
2. Data Wrangling & Transformation (Using SQL Joins & Aggregations)
    - Filtered and grouped data based on artists, track popularity, and streaming platform.
    - Created new calculated fields (e.g., energy difference between tracks, average tempo per artist).
    - Used COALESCE and CASE statements to handle missing data in platform analysis.
      
4. Exploratory Data Analysis (Using SQL Queries)
    - Identified most streamed songs, albums, and artists.
    - Analyzed platform-wise performance (Spotify vs. YouTube streams).
    - Examined the relationship between song characteristics and popularity.

## Key Insights
1. Tracks with high energy and danceability tend to have higher streams.
2. Spotify dominates in terms of overall streams, but YouTube leads in viral trends.
3. Popular artists show consistent audio feature patterns across multiple hit songs.
4. Certain genres exhibit higher listener engagement based on platform trends.

## Conclusion
This project provides deep insights into Spotify’s music streaming trends, artist performance, and user engagement using SQL-based analysis. The findings can help artists, music labels, and streaming platforms make data-driven decisions to improve song popularity, listener retention, and market positioning.
