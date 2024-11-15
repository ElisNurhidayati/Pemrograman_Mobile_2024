import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen - Elis'),
        backgroundColor: const Color(0xFFFFFFE3),
      ),
      body: Center(
        child:
            ElevatedButton(child: const Text('Change Color'), 
            onPressed: () {
              _showColorDialog(context);
            }),
      ),
    );
  }

  // ignore: unused_element
  _showColorDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
                child: const Text('Mango'),
                onPressed: () {
                  color = const Color(0xFFFEC89A);
                  Navigator.pop(context, color);
                }),
            TextButton(
                child: const Text('Barbie'),
                onPressed: () {
                  color = const Color(0xFFFFCAE9);
                  Navigator.pop(context, color);
                }),
            TextButton(
                child: const Text('Beach'),
                onPressed: () {
                  color = const Color(0xFFDAF4EF);
                  Navigator.pop(context, color);
                }),
          ],
        );
      },
    );
    setState(() {});
  }
}
