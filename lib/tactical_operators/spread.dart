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
  /// Spread operator in this case adds new elements to an already existing collection
  final showLoginUI = true;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text('Fake email input'),
        Text('Fake password input'),
        if (showLoginUI) ...[
          RaisedButton(
            child: Text('Login'),
            onPressed: () {},
          ),
          FlatButton(
            child: Text('Forgotten Password'),
            onPressed: () {},
          ),
        ],
        if (!showLoginUI)
          RaisedButton(child: Text('Register'), onPressed: () {}),
      ],
    );
  }
}
