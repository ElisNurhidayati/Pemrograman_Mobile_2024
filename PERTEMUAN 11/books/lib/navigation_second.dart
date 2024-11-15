import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});
  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Second Screen'),
        backgroundColor: const Color(0xFFFFFFE3),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                child: const Text('Mango'),
                onPressed: () {
                  color = const Color(0xFFFEC89A);
                  Navigator.pop(context, color);
                }),
            ElevatedButton(
                child: const Text('Barbie'),
                onPressed: () {
                  color = const Color(0xFFFFCAE9);
                  Navigator.pop(context, color);
                }),
            ElevatedButton(
                child: const Text('Beach'),
                onPressed: () {
                  color = const Color(0xFFDAF4EF);
                  Navigator.pop(context, color);
                }),
          ],
        ),
      ),
    );
  }
}
