<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Create a beautiful titles with Sweet Title, you can have a title with a button or without a button.

## Getting started

This package provides a customizable Title for flutter projects
Include the package in `pubspec.yaml` and start using it


```dart
        SweetTitle(
            title: 'Brands',
        ),


        SweetTitle.button(
            title: 'Brands',
            buttonText: 'Explore',
            buttonOnPressed: () => print('clicked'),
        ),
```

