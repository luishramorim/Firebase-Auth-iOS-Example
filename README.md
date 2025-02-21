# Firebase Authentication Example
[![Swift Version](https://img.shields.io/badge/Swift-5.0-orange.svg?style=flat-square)](https://swift.org)
[![Platform](https://img.shields.io/badge/Platform-iOS-blue.svg?style=flat-square)](https://developer.apple.com/ios/)


This repository contains a SwiftUI project demonstrating how to implement Firebase Authentication in an iOS application. 
### The example includes the following functionalities:

* Account Creation (Sign Up): Create a new user account using email, password, and full name.
* Login: Sign in using email and password.
* Delete Account: Delete the authenticated user account from Firebase.
* Logout: Sign out of the application.
* Password Recovery: Request a password reset email.

## Video


https://github.com/user-attachments/assets/0b5b301d-9087-4a48-b9e5-3bc2783a020d


## Prerequisites

### Before running the project, ensure you have the following:
* Xcode installed.
* A Firebase project set up in the Firebase Console.
* Firebase Authentication enabled in your Firebase project.
* Firebase SDK installed via CocoaPods or Swift Package Manager.

## Important:
You must include your GoogleService-Info.plist file in the project. This file contains the necessary configuration for connecting your app to your Firebase project. You can download this file from your Firebase project settings in the Firebase Console.

### Project Structure
* LoginView.swift:
Handles user login with email and password. It uses focus management with @FocusState to seamlessly navigate between input fields, and triggers the login process when the user submits the password field.
* SignUpView.swift:
Allows new users to create an account. This view includes fields for full name, email, and password, and also utilizes @FocusState for improved keyboard navigation.
* PasswordRecoveryView.swift:
Enables users to recover their password by entering their email address and receiving a reset link. The email field is configured to trigger the password reset action when the return key is pressed.
* HomeView.swift:
Displays the authenticated user’s information (full name, email, and UID) and provides options to log out or delete the account. The delete account functionality is secured by a confirmation alert.

## Getting Started
1. Clone the repository:

```


git clone https://github.com/luishramorim/Firebase-Auth-iOS-Example.git

```

2. Open the project in Xcode.
3. Add your GoogleService-Info.plist:
Download the GoogleService-Info.plist file from your Firebase Console and add it to your project. Make sure the file is included in the app target.
4. Install Firebase SDK:
Use CocoaPods or Swift Package Manager to integrate Firebase into your project.
5. Build and run the project on a simulator or a real device.

## Firebase Authentication Functionality

This example demonstrates the following Firebase Authentication features:
* Sign Up:
Create a new user account using email and password. The user’s full name is also set in Firebase Authentication.

* Login:
Authenticate an existing user with email and password. The login process includes keyboard navigation improvements for a smoother experience.

* Password Recovery:
Users can request a password reset email by providing their registered email address.

* Logout:
Allows the authenticated user to log out of the app.

* Delete Account:
Provides an option to delete the current user’s account. A confirmation alert is shown before deletion, and any errors during the process are handled gracefully.

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests if you have improvements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for details.
