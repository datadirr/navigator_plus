[<img src="https://datadirr.com/datadirr.png" width="200" />](https://datadirr.com)


# navigator_plus

This package helps to manage the navigate between screens in an elegant and easy way.

## Using

For help getting started with Flutter, view our
[online documentation](https://pub.dev/documentation/navigator_plus/latest), which offers tutorials,
samples, guidance on mobile and web development, and a full API reference.

## Installation

First, add `navigator_plus` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/platform-integration/platform-channels).

In your flutter project add the dependency:

```yml
dependencies:
  ...
  navigator_plus:
```

For help getting started with Flutter, view the online
[documentation](https://flutter.io/).

## Example

Please follow this [example](https://github.com/datadirr/navigator_plus/tree/master/example) here.

Navigate screen
```dart
NavigatorName.to(context, Routes.secondScreen,
  arguments: {'name': 'datadirr'}, result: (result) {
    if (result.resultOk) {
      log("Owner: ${result.data['ownerName']}");
    }
});
```

Fetch data from screen
```dart
NavigatorName.getArguments(context);
```

