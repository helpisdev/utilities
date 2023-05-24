# Utilities

## About The Project

--------------------

The aim of this project is to provide a range of useful Dart and Flutter utilities ranging from extensions to widgets. It has utilities from basic functions to widgets to routing. An example is provided that uses most of the provided functionality.

### ___Built With:___

[![Dart][Dart]][dart-url] [![Flutter][Flutter]][flutter-url]

## Getting Started

--------------------

This package isn't on [pub.dev](https://pub.dev), so to be used it has be added as a local path package.

### Prerequisites

To install and build the project you have to have already installed __git__, and __flutter__.
You can find instructions on how to install those on their respected websites:

- [git](https://git-scm.com/downloads)
- [flutter](https://docs.flutter.dev/get-started/install)

### Installation

1. Add the repo as a submodule to your project

   ```bash
   mkdir -p packages/utilities
   git submodule add https://github.com/helpis-software/utilities.git packages/utilities
   ```

2. Clone the repo

   ```bash
   git submodule update --remote --init --recursive --progress
   ```

3. Change directory to utilities

   ```bash
   cd packages/utilities
   ```

4. Install Flutter packages

   ```bash
   flutter pub get
   cd ../..
   ```

5. Add the package to your local `pubspec.yaml`

   ```yaml
   # ...
   dependencies:
     utilities:
       path: packages/utilities
   ```

6. Update your dependencies

   ```bash
   flutter pub get
   ```

7. Include it to your project

   ```dart
   // Suggested to be used with a prefix to avoid potential name conflicts
   // Even better, use `show` to import only the members you will be using
   import 'package:utilities/utilities.dart' as util;
   ```

<!-- STYLEGUIDES -->
## Styleguide

--------------------

We try to be consistent in code style throughout our codebase and follow certain guidelines. Most of them should comply with popular standards, but some might diverge due to personal preferences and conventions. Please read more about our code style if you are considering to contribute to our products. You find general recommendations at [STYLEGUIDE.md](STYLEGUIDE.md), and language-specific guidelines at the respective styleguides for each language used.

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[Dart]: https://img.shields.io/badge/dart-0175C2?style=for-the-badge&logo=dart&logoColor=white
[dart-url]: https://dart.dev/
[Flutter]: https://img.shields.io/badge/flutter-44d1fd?style=for-the-badge&logo=flutter&logoColor=08589c
[flutter-url]: https://flutter.dev/
