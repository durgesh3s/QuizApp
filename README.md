# Quiz Mobile App

A mobile quiz application built with Flutter and Firebase. This app allows users to register, login, and take quizzes with real-time database integration. 

## Features
- User Authentication (Sign up, Sign in, Sign out)
- Real-time database integration with Firebase
- Dynamic quiz content
- Track scores and progress
- Clean and responsive UI

## Screenshots
![Login Screen](screenshots/login.png)
![Quiz Screen](screenshots/quiz.png)
![Result Screen](screenshots/result.png)

## Getting Started

### Prerequisites
- [Flutter](https://flutter.dev/docs/get-started/install) (version 2.0 or later)
- A Firebase project (with Firestore and Authentication enabled)

### Installation

1. **Clone the repository**
    ```sh
    git clone https://github.com/yourusername/quiz-mobile-app.git
    cd quiz-mobile-app
    ```

2. **Install dependencies**
    ```sh
    flutter pub get
    ```

3. **Set up Firebase**
    - Create a Firebase project in the [Firebase Console](https://console.firebase.google.com/).
    - Add an Android app and an iOS app to your Firebase project.
    - Follow the instructions to download the `google-services.json` (for Android) and `GoogleService-Info.plist` (for iOS) and place them in the respective directories (`android/app` and `ios/Runner`).
    - Enable Firestore and Authentication (Email/Password) in your Firebase project.

4. **Run the app**
    ```sh
    flutter run
    ```

## Usage

1. **Sign Up**
    - Open the app and navigate to the Sign Up screen.
    - Register with an email and password.

2. **Login**
    - Navigate to the Login screen and log in with your credentials.

3. **Take a Quiz**
    - Choose a quiz from the available options.
    - Answer the questions and submit to see your score.

## Contributing

1. **Fork the repository**
2. **Create a new branch**
    ```sh
    git checkout -b feature/YourFeature
    ```
3. **Commit your changes**
    ```sh
    git commit -m 'Add some feature'
    ```
4. **Push to the branch**
    ```sh
    git push origin feature/YourFeature
    ```

