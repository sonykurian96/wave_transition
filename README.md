# wave_transition

A flutter package which helps you create amazing wave transitions
without any boilerplate code.

![](https://im2.ezgif.com/tmp/ezgif-2-63bbf8d939e5.gif)

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