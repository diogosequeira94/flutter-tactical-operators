import 'package:flutter/material.dart';

List<int> joinCollectionsWithoutSpread() {
  final collection = [1, 2, 3];
  final otherCollection = [4, 5, 6];
  collection.addAll(otherCollection);
  return collection;
}

List<int> joinCollectionsWithSpread() {
  /// Unpacks the elements of a collection so they can be used in another collection
  final collection = [1, 2, 3];
  final otherCollection = [4, 5, 6];
  return [...collection, ...otherCollection];
}

class MySpreadWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
