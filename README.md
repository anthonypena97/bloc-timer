# BLoC Timer

![IOS](https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white) 
![Android](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white) 
![Mac OS](https://img.shields.io/badge/mac%20os-000000?style=for-the-badge&logo=macos&logoColor=F0F0F0)
![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)

![Timer](https://user-images.githubusercontent.com/79285555/179053360-c5b3f461-3ad8-4866-9e46-a17298e13526.gif)

BLoC Timer is a simple application for counting down 1 minute.

<hr>

This application is written using [Flutter](https://flutter.dev/) and leverages the [BLoC Library](https://bloclibrary.dev/#/) for observability of state changes.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Notes](#notes)
- [Version History](#version)
- [Contributing](#contributing)
- [Questions](#questions)
- [Acknowledgments](#acknowledgments)


## Installation

- Install xCode
- Install Android Studio
- Install Flutter
- Download this repository
- Open Terminal in folder directory
- Run `flutter pub get`, in order to download packages

## Usage

- Open Terminal in folder directory
- Open an Adroid Simulator or iOS Simulator
- Run`flutter run`

## Notes

### App Features include:
* **Start** timer countdown from 1 minute
* **Pause** timer at current timestap
* **Reset** timer to begin from 1 minute once again
* Dynamic action buttons dependent on state of application
* Simple and understandable UI

### This codebase leverges:
* `BlocOverserver`, in order to bbserve state changes
* `BlocProvider`, Flutter widget which provides a bloc to its chlidren
* `BlocBuilder`, Flutter widget that handles building the widget in response to new states
* Prevent unnecesary rebuilds with `Equatable`
* The use of `StreamSubscription` in a Bloc
* Prevent unnecessary rebuilds with `buildWhen`


## Version History

- v.1.0 is latest version
  - - See [commit change](https://github.com/anthonypena97/bloc-timer/commits/main) or See [release history](https://github.com/anthonypena97/bloc-timer/releases)

## Contributing

Please refer to the [Contributor Covenant](https://www.contributor-covenant.org/) for guidelines on contributing on this project.

## Questions

For any inquiries or questions, please contact Anthony Pena via:

- GitHub: [anthonypena97](https://github.com/anthonypena97)
- Email: <anthony.e.p3na@gmail.com>

## Acknowledgments

Inspiration, code snippets, etc.
- This is a companion project to The BLoC Library's official tutorials, check out the full tutorials at [https://bloclibrary.dev](https://bloclibrary.dev)
