# Database design and development

Users Table:
- user_id (Primary Key)
- username
- name
- email
- phone_number
- password_hash (encrypted)
- created_at
- updated_at

FoodItems Table:
- food_item_id (Primary Key)
- name
- description
- price
- rating
- restaurant_id (Foreign Key)
- user_id (Foreign Key)
- photo_url
- location
- created_at (timestamp)
- updated_at (timestamp)

Ratings Table:
- rating_id (Primary Key)
- user_id (Foreign Key referencing Users table)
- fooditem_id (Foreign Key referencing FoodItems table)
- rating (Individual rating given by a user for a specific food item)
- timestamp (Date and time when the rating was submitted)

Comments Table:
- comment_id (Primary Key)
- user_id (Foreign Key referencing Users table)
- fooditem_id (Foreign Key referencing FoodItems table)
- comment_text (Text of the comment)
- timestamp (Date and time when the comment was posted)

Followers Table:
- follower_id (Primary Key)
- user_id (Foreign Key referencing Users table - the follower)
- following_user_id (Foreign Key referencing Users table - the user being followed)

Reports Table:
- report_id (Primary Key)
- user_id (Foreign Key referencing Users table)
- fooditem_id (Foreign Key referencing FoodItems table)
- report_reason (Reason for reporting, e.g., inappropriate content)
- timestamp (Date and time when the report was submitted)

