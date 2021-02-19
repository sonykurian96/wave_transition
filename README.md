# wave_transition

A flutter package which helps you create amazing wave transitions
without any boilerplate code.

## usage

[Example] (https://github.com/sonykurian96/Flutter-Wave-transition-package-example)

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
        duration: Duration(milliseconds: 1000) // optional
      )
   );
 },
```