# ImproWave

ImproWave is a Flutter mobile application designed to provide a seamless user experience across different workout, profile, and login-related features. This project leverages Firebase, shared preferences, and state management with `Provider` to deliver a comprehensive and user-friendly application.

## Features

- **User Authentication**: Supports login and verification pages with Firebase.
- **User Profile**: Includes edit profile, friends list, and viewing both trainer and athlete profiles.
- **Workout Programs**: Allows users to view and manage workout programs.
- **Payment System**: Integrated payment and success screens.
- **Notification Page**: A dedicated page for viewing notifications.
- **Theme Support**: Dark and light mode support using `ThemeProvider`.

## Project Structure

The project follows a modular structure for better organization and scalability:

- **pages/**: Contains different UI pages such as `home`, `login`, `profile`, and `workout_pages`.
- **themes/**: Includes theme management with `ThemeProvider`.
- **utils/**: Utility files for Firebase options and other shared preferences.
- **MainApp**: The entry point of the application that handles initial setup, including Firebase initialization and the main routing.

## Getting Started

### Prerequisites

- **Flutter SDK**: Ensure that you have the Flutter SDK installed. You can download it from [Flutter’s official website](https://flutter.dev/).
- **Firebase**: Set up a Firebase project and integrate it with your app. The `firebase_options.dart` file is required to store Firebase configuration.

### Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/improwave.git
   cd improwave

