# wave_transition

The package will provide smooth wave transitions between pages without having to write any boilerplate code.

![example](https://user-images.githubusercontent.com/67534990/108588638-48d72700-7380-11eb-958f-371f8b7d7b27.gif)

## Getting Started

[Example] (https://github.com/sonykurian96/wave_transition/blob/master/example/lib/main.dart)

To use this package : *add the dependency to your [pubspec.yaml] file

```yaml
   dependencies:
     flutter:
       sdk: flutter
     wave_transition:
```

## use case

```dart
   onPressed: () {
     Navigator.push(
       context,
       WaveTransition(
        child: SecondScreen(),
        center: FractionalOffset(0.90, 0.90)
        duration: Duration(milliseconds: 3000) // optional
      )
   );
 },
```

You can pass arguments using RouteSettings ->

```dart
    settings: RouteSettings(
      arguments: "yeah! it works!"
    )
```
