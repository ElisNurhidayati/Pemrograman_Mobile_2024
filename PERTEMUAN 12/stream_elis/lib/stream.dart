import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.pink,
    Colors.cyan,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.red,
  ];

  Stream<String> getColors() async* {
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      int index = t % colors.length;
      return colors[index].value.toRadixString(16).padLeft(8, '0');
    });
  }
}
