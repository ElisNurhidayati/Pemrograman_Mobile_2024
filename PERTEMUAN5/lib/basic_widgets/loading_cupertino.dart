import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyCupertinoWidget());
}

class MyCupertinoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 30),
          color: const Color.fromARGB(255, 0, 145, 255),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CupertinoButton(
                child: const Text("Contoh button"),
                onPressed: () {
                },
              ),
              const CupertinoActivityIndicator(), // Loading indicator khas iOS
            ],
          ),
        ),
      ),
    );
  }
}
