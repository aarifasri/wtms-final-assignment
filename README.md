# 📱 WTMS (Worker Task Management System)

WTMS is a mobile application developed using **Flutter** as the frontend and **PHP + MySQL** as the backend. It allows workers to register, log in, view and update their profiles, and manage tasks assigned to them. This app was developed as part of the Mobile Programming (STIWK2114) course final assignment.

## 📸 Screenshots

<!-- Replace with actual screenshot image paths or URLs -->
<img src="screenshots/login.png" width="200"> <img src="screenshots/register.png" width="200">  
<img src="screenshots/profile.png" width="200"> <img src="screenshots/dashboard.png" width="200">  

## 🚀 Features

- ✅ User Registration with SHA1 password hashing
- 🔐 Secure Login and Logout system
- 👤 Profile Viewing & Editing 
- 📝 Task Viewing and Submission (Phase 2)
- 🔄 Persistent Session using SharedPreferences
- 📡 Connected to PHP backend and MySQL database
- 🎨 Clean and Responsive UI

## 🧑‍💻 Technologies Used

| Technology | Purpose |
|------------|---------|
| Flutter | Frontend Mobile UI |
| PHP | Backend API logic |
| MySQL | Database for storing user data |
| Shared Preferences | Persistent local session |
| HTTP Package | API communication |

## 📁 Project Structure

lib/
├── main.dart
├── screens/
│ ├── splash_screen.dart
│ ├── login_screen.dart
│ ├── register_screen.dart
│ ├── profile_screen.dart
│ └── dashboard_screen.dart
├── api/
│ └── api_service.dart
├── models/
│ └── user.dart
assets/
└── images/


## ⚙️ Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/aarifasri/wtms_flutter.git
cd wtms_flutter
```
### 2. Install Flutter Packages
```bash
flutter pub get
```
### 3. Configure API Endpoint

