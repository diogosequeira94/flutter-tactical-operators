import 'package:flutter/material.dart';

void withoutCoalescing() {
  String myValue;
  String fallbackValue = 'fallback';

  String result;
  if (myValue == null)
    result = fallbackValue;
  else
    result = myValue;

  print(result); // it will be fallback

  // You could do it with ternary

  final resultTernary = myValue == null ? fallbackValue : myValue;

  print(resultTernary); // it will be fallback
}

void withCoalescing() {
  String myValue;
  String fallbackValue = 'fallback';

  final result = myValue ?? fallbackValue;

  print(result); // it will be fallback
}

void assignment() {
  String uninitializedValue;
  String initializedValue = 'something';

  // Null-aware assignment operator, only assigned if null.
  uninitializedValue ??= 'new value';
  initializedValue ??= 'new value';

  print(uninitializedValue); // Prints new value
  print(initializedValue); // Remains something
}

void access() {
  // Null-safe access operator
  String uninitializedValue;
  String initializedValue = 'something';

  print(uninitializedValue.toUpperCase()); // Will throw null-pointer exception

  print(uninitializedValue?.toUpperCase()); // Will print null.

  print(initializedValue?.toUpperCase()); // Will print SOMETHING.
}

void spread() {}

class MyNullWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
