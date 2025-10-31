# 🖥️ Social Media Platform (Java + Swing + MySQL)

A **desktop-based social networking application** built using **Java Swing**, **JDBC**, and **MySQL**, following the **MVC architecture**.  
It allows users to create accounts, share posts, like, comment, manage friends, and interact within a modern GUI-based environment.

---

## 🎯 Project Objective

To develop a **Java desktop social media app** that enables users to:

- 👤 Register and log in securely  
- 📝 Create and view posts  
- ❤️ Like or dislike posts  
- 💬 Comment on posts  
- 👯 Manage friends and relationships  
- 🏠 View timelines and profile information  

---

## 🧩 Features

- 👤 **User Authentication** – Secure login and signup  
- 📝 **Post Creation** – Share your thoughts instantly  
- ❤️ **Like System** – Like/Unlike posts dynamically  
- 💬 **Comments** – Add and view post comments  
- 👯 **Friendship System** – Add or remove friends  
- 🏠 **Home Timeline** – View your friends’ latest posts  
- 🪟 **Modern GUI** – Custom Swing components with smooth UX  
- 🧠 **MVC Architecture** – Separation of model, view, and controller logic  

---

## 🏗️ Project Structure

```
SocialMediaPlatform/
│
├── Model/           # Data models (User, Post, Comment, Database)
├── View/            # Swing GUI components (Login, Home, Comments, etc.)
├── Controller/      # Business logic and database operations
├── SocialMediaPlatform/  # Main entry point (Main.java)
└── pics/            # Image assets (icons, buttons, etc.)
```

---

## ⚙️ Technologies Used

| Component     | Technology                        |
|----------------|-----------------------------------|
| **Language**   | Java (JDK 24)                     |
| **GUI**        | Java Swing                        |
| **Database**   | MySQL (via JDBC)                  |
| **Architecture** | MVC Pattern                     |
| **IDE**        | IntelliJ IDEA Community Edition   |
| **Build System** | Manual / Native (no framework)  |

---

## 🧠 Core Algorithms Implemented

### 🔹 Model Layer
- `User.java` → Manages profile, likes, and friends lists  
- `Post.java` → Represents posts with timestamp & author  
- `Comment.java` → Represents user comments on posts  
- `Database.java` → Manages JDBC connection  

### 🔹 Controller Layer
Handles all database operations:
- `CreateUser`, `ReadUser`, `UpdateUser`, `ChangePassword`  
- `CreatePost`, `ReadUserPosts`, `LikePost`, `DislikePost`  
- `ReadPostComments`, `ReadPostLikes`, `AddFriend`, `RemoveFriend`  

### 🔹 View Layer
Contains Swing UI components:
- `Login`, `Register`, `Home`, `Modify`, `Comments`, `Alert`  
- Post & Friend panels, Custom Buttons, Rounded Text Fields, etc.  

---

## 🧰 Setup Instructions

### 🔸 1. Clone the Repository
```bash
git clone https://github.com/harshalvpatil30-prog/SocialMediaPlatform-miniproject
```

### 🔸 2. Open in IntelliJ IDEA
- Go to **File → Open** and select the project folder.

### 🔸 3. Configure MySQL
1. Create a database named **`socialmedia`**  
2. Import the provided SQL schema (if available)  
3. Update credentials in `Model/Database.java`:
   ```java
   private String user = "root";
   private String pass = "";
   private String url = "jdbc:mysql://localhost:3307/socialmedia";
   ```

### 🔸 4. Run the Application
- Run `SocialMediaPlatform.Main.java`  
- The **Login/Register** window should appear.

---

## 🪄 Output Overview

- 🖥️ **Welcome / Login Page**  
- 🏠 **Home Page** – shows timeline with posts  
- ❤️ **Like/Comment System** – interactive icons  
- 👯 **Friends Page** – add or remove friends  
- ⚙️ **Modify Profile Page**  
- 🔐 **Change Password / Alerts**

---

## 🚀 Future Enhancements

- 🌙 Dark mode theme  
- 🔔 Real-time updates (via WebSocket or Firebase)  
- 🖼️ Image upload support  
- 📨 Notification system  
- 💻 Migration to JavaFX or web frontend (Angular/React)

---

## 👨‍💻 Author

**Harshal Patil**  
📧 [harshalvpatil30@gmail.com](mailto:harshalvpatil30@gmail.com)  
💼 [LinkedIn Profile](https://www.linkedin.com/in/harshal-patil-227882354)
