# Listview App with Firebase

## About the Project
This is a simple Listview app using firebase.

This project is built with,
* [Flutter](https://flutter.dev/) 

## Getting started
1. Clone the project
```
$ git clone https://github.com/ShanManage/listview_app_with_firebase.git
```
2. Install dependencies
```
$ flutter pub get
```
3. Build apk/app-image
```
$ flutter build apk
```
```
$ flutter build ipa
```

## Project Structure

    .
    ├── build                     # Build files
    ├── lib                       # Source files
    │   ├── getx                  # GetX state manager
    │   ├── models                # Model classes
    │   ├── screens               # App screens
    │   ├── services              # Services
    │   ├── widgets               # Support widgets
    │   └── main.dart             # App entry 
    ├── tests                     # Automated tests
    ├── pubspec.yaml
    ├── pubspec.lock
    └── README.md

## GetX Architecture

Flutter GetX has been used for the state management of the application. All the data are managed in the service classes and fed into the UI. GetX bindings are used to bind the controllers in the router level. 
