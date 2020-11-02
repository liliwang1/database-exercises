# For each scenario, select the best relationship type and why:
#   - in a dating app: users and user_profiles
-- one-to-one
-- note: profile table
#   - in an online marketplace: orders and products
-- many-to-many
#   - in a blog application: users and posts
-- one-to-many
#   - in a social media app: users and groups
-- many-to-many
#   - in an app for professional networking: businesses and addresses
-- many-to-many
#   - in a dog walking app: pet_records and pet_owners
-- many-to-many

# Adlister Application
# We'll be building out the entire AdLister project in a later module, but for now, let's design the database! The AdLister is a small scale Craigslist clone where users can post ads for items.
# Specifications
# Users sign up for the site with an email and password
# Users create ads with a title and description and category.
# Each ad is associated with the user that created it.
# An ad can be in one or more categories (for example, "help wanted", "giveaway", or "furniture")
#
# Write SQL queries to answer the following questions:
# For a given ad, what is the email address of the user that created it?
-- SELECT email
-- from users u
-- JOIN ads a ON a.user_id = u.id
-- WHERE a.id = 5;
# For a given ad, what category, or categories, does it belong to?
-- SELECT category_name
-- FROM categories
-- WHERE id IN (
   -- SELECT category_id
   -- FROM ad_category
   -- WHERE ad_id = 5
   -- );
# For a given category, show all the ads that are in that category.
# SELECT ads.title
# FROM ads
# WHERE id IN (
#     SELECT ad_id
#     FROM ad_category
#     WHERE category_id = (
#         SELECT id
#         FROM categories
#         WHERE name = 'help wanted'
#         )
#     );
# For a given user, show all the ads they have posted.
# SELECT ads.title
# FROM ads
# WHERE user_id = (
#     SELECT id
#     FROM users
#     WHERE username = 'abc123'
#     );


# Bonus: Quiz Application
# Design a database for a quiz-taking application.
#
# Specifications
# Administrators create questions
# Administrators create answers for each question
# Each question should have one correct answer
# Administrators create quizzes
# Quizzes have one or more questions associated with them
# Students (users) take quizzes
# The application should record a student's answers for each question on the quiz

# For a given student, calculate their score on a given quiz.
# For a given quiz, find how many students have taken it.
# Bonus
# Allow questions to have multiple correct answers