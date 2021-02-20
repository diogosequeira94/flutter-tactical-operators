import 'package:flutter/material.dart';

///A Cascade operator is a way of changing calls on an object one after another.
List<int> withoutCascade() {
  final list = [5, 1, 3, 2, 4];
  list.sort();
  list.removeLast();
  return list;
}

List<int> withCascade() {
  // Or do the below directly without assigning the list to a variable
  final list = [5, 1, 3, 2, 4];
  return list
    ..sort()
    ..removeLast();
}

class MyCascadeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Without: ${withoutCascade()}');
    print('With: ${withoutCascade()}');
    return Container();
  }
}
