import 'package:flutter/material.dart';

void withoutCoalescing() {}

void withCoalescing() {}

void assignment() {}

void access() {}

void spread() {}

class MyNullWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
