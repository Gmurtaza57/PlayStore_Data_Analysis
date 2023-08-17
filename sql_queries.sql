-- 1️⃣ Identified top 10 apps with the highest ratings.
SELECT App, Rating
FROM cleaned_apps_db
ORDER BY Rating DESC
LIMIT 10;

-- 2️⃣ Obtained installs and reviews for the top 5 most reviewed apps.
SELECT App, Installs, Reviews
FROM cleaned_apps_db
ORDER BY Reviews DESC
LIMIT 5;

-- 3️⃣ Found the app with the highest number of reviews and its category.
SELECT App, Reviews, Category
FROM cleaned_apps_db
ORDER BY Reviews DESC
LIMIT 1;

-- 4️⃣ Calculated total revenue generated by the Google Play Store through app purchases.
SELECT SUM(Price * Installs)
FROM cleaned_apps_db;

-- 5️⃣ Determined the category with the highest number of installs and total installs.
SELECT Category, SUM(Installs) AS TOTAL_SUM
FROM cleaned_apps_db
GROUP BY Category
ORDER BY TOTAL_SUM DESC
LIMIT 1;

-- 6️⃣ Analyzed the genre with the most published apps.
SELECT Genres, COUNT(Genres)
FROM cleaned_apps_db
GROUP BY Genres
ORDER BY COUNT(Genres) DESC
LIMIT 1;

-- 7️⃣ Provided a list of games ranked by installs.
SELECT DISTINCT App AS 'Name of the game', Installs
FROM cleaned_apps_db
WHERE Category = 'GAME'
ORDER BY Installs DESC;

-- 8️⃣ Counted the number of free and paid apps.
SELECT Type, COUNT(*) AS count 
FROM cleaned_apps_db
WHERE TYPE IN ('Free', 'Paid')
GROUP BY Type;

-- 9️⃣ Identified the best dating app based on the highest number of reviews.
SELECT App, Reviews
FROM cleaned_apps_db
WHERE Category IN ("Dating")
ORDER BY Reviews DESC
LIMIT 1;

-- 🔟 Compared reviews with positive and negative sentiment for the app "10 Best Foods for You."
SELECT Sentiment, COUNT(*)
FROM cleaned_reviews_db
WHERE Sentiment IN ("Positive", "Negative") AND App = ("10 Best Foods for You")
GROUP BY Sentiment;

-- 1️⃣1️⃣ Extracted comments for ASUS SuperNote with sentiment polarity and subjectivity both equal to 1.
SELECT App, Translated_Review, Sentiment_Polarity, Sentiment_Subjectivity
FROM cleaned_reviews_db
WHERE Sentiment_Polarity = 1 AND Sentiment_Subjectivity = 1 AND App = "ASUS SuperNote";

-- 1️⃣2️⃣ Extracted neutral sentiment reviews for the app "Abs Training-Burn belly fat."
SELECT App, Translated_Review, Sentiment
FROM cleaned_reviews_db
WHERE APP = "Abs Training-Burn belly fat"  AND Sentiment = "Neutral";

-- 1️⃣3️⃣ Extracted negative sentiment reviews for ASUS SuperNote with sentiment polarity and subjectivity.
SELECT Translated_Review, Sentiment_Polarity, Sentiment_Subjectivity
FROM cleaned_reviews_db
WHERE App = 'ASUS SuperNote'
AND Sentiment = 'Negative';