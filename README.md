# Softlife 🌱

**Your Personal Growth Journey** — Track habits, mood, goals, activities, and journal entries in one beautiful place.

## 🚀 Live Demo
[softlifegrowthtracker.vercel.app](https://softlifegrowthtracker.vercel.app)

---

## 📁 Project Structure

```
softlife_growth_tracker/
├── api/                  ← PHP backend endpoints
│   ├── login.php
│   ├── signup.php
│   ├── logout.php
│   ├── load.php
│   ├── habits.php
│   ├── moods.php
│   ├── activities.php
│   ├── goals.php
│   ├── journal.php
│   ├── feedback.php
│   └── cleanup.php
├── config/
│   └── db.php            ← Database connection (auto-creates tables)
├── includes/
│   └── helpers.php       ← Auth, CORS, utility functions
├── index.html            ← Single-page frontend
├── app.js                ← All frontend JavaScript
├── style.css             ← All styles
├── Dockerfile            ← For Railway deployment
├── vercel.json           ← For Vercel PHP deployment
├── .htaccess             ← Apache rules + security
└── softlife_db.sql       ← Schema reference (auto-created by db.php)
```

---

## ⚙️ Deployment

### Railway (Docker)
1. Connect your GitHub repo to Railway
2. Set these environment variables in Railway:
   - `MYSQLHOST` — provided by Railway MySQL
   - `MYSQLPORT` — provided by Railway MySQL
   - `MYSQLUSER` — provided by Railway MySQL
   - `MYSQLPASSWORD` — provided by Railway MySQL
   - `MYSQLDATABASE` — `softlife_db`
   - `FRONTEND_URL` — your frontend URL (e.g. `https://softlifegrowthtracker.vercel.app`)
3. Deploy — tables are auto-created on first request

### Vercel (PHP)
1. Connect your GitHub repo to Vercel
2. Add the same environment variables in Vercel → Settings → Environment Variables
3. Deploy

### XAMPP (Local)
1. Copy folder to `htdocs/softlife`
2. Start Apache + MySQL
3. Visit `http://localhost/softlife/`
4. Tables are auto-created on first visit

---

## ✨ Features
- 🌙 Habit Tracking with streaks
- 😊 Daily Mood Logging
- 🏃 Activity Tracker
- 🎯 Goal Setting & Progress
- 📓 Private Journal
- 🌗 Dark / Light Mode
- 📊 Charts & Analytics
- 🔐 Secure Auth (session tokens)
