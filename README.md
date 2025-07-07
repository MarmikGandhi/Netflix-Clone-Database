
# 📺 Netflix Clone SQL Database

A comprehensive SQL database schema designed for a **Netflix Clone** project. This project simulates a real-world video streaming service by including tables for users, content, genres, subscriptions, reviews, recommendations, payments, and more.

## 📂 Project Structure

The project includes a MySQL-compatible SQL dump file:

- `netflix_clone.sql`: Contains full schema definitions and sample data for all related entities of a Netflix-like platform.

## 🧰 Features

- 🎞️ **Content Management**: Movies and TV shows with detailed metadata
- 🌐 **Multi-language Support**: Audio language options for content
- 👤 **User Profiles**: Multiple profiles per user for personalized experience
- 📄 **Subscription Plans**: Tiered pricing with resolution and device limits
- 💳 **Payments & Billing**: Payment method tracking and subscription history
- ⭐ **Reviews and Ratings**: User-submitted ratings and comments
- 🔁 **Recommendations Engine**: Smart content suggestions with reasoning
- 📝 **Watch History & Watchlist**: User-specific content interactions
- 🔮 **Upcoming Content**: Sneak peeks of unreleased shows or movies

## 🧱 Database Schema Overview

| Table Name          | Description |
|---------------------|-------------|
| `users`             | User account information |
| `profiles`          | Sub-user profiles per account |
| `content`           | Core media (movies and shows) |
| `genres`            | Genre classification |
| `audio_languages`   | Audio language options for each content |
| `plans`             | Subscription plans with pricing |
| `subscriptions`     | Active user subscriptions |
| `payment_methods`   | Accepted payment modes |
| `payments`          | Records of user payments |
| `reviews`           | User ratings and reviews |
| `recommendations`   | Suggested content with explanation |
| `viewing_history`   | Tracks what each user watched |
| `watchlist`         | Saved content for later viewing |
| `upcoming_content`  | Future releases preview |

## ⚙️ Setup Instructions

1. **Clone the Repository** (or download this project)
   ```bash
   git clone https://github.com/your-username/netflix-clone-sql.git
   cd netflix-clone-sql
   ```

2. **Create the Database**
   ```sql
   CREATE DATABASE netflix_clone;
   ```

3. **Import the SQL Dump**
   You can use phpMyAdmin or MySQL CLI:
   ```bash
   mysql -u your_username -p netflix_clone < netflix_clone.sql
   ```

4. **Explore the Tables**
   You can now run queries to explore user subscriptions, content metadata, reviews, and more.

## 📊 Example SQL Queries

```sql
-- Get all featured content
SELECT title, type FROM content WHERE is_featured = 1;

-- List reviews with ratings above 4
SELECT u.name, c.title, r.rating
FROM reviews r
JOIN users u ON r.user_id = u.user_id
JOIN content c ON r.content_id = c.content_id
WHERE r.rating > 4;
```

## 🛠 Built With

- 💻 MySQL 8 / MariaDB 10
- 📐 phpMyAdmin for dump creation
- ☕ SQL scripting

## 📌 Use Cases

- Educational projects and database learning
- Backend development mock for streaming services
- Integration with full-stack applications (Node.js, Django, Flask, etc.)
- Practice for JOINs, indexes, constraints, and normalization

## 📃 License

This project is licensed under the [MIT License](LICENSE).

## 🙋‍♀️ Author

Developed by **Marmik Gandhi**
Feel free to connect:  
- GitHub: [@MarmikGandhi](https://github.com/MarmikGandhi)
- Email: [marmikgandhi@gamil.com](mailto:marmikgandhi@gamil.com)
- LinkedIn: [marmik-gandhi](https://www.linkedin.com/in/marmik-gandhi-006a55323/)

---

> Turning data into stories — one SQL query at a time.
