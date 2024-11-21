import 'package:flutter/material.dart';
import 'stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Stream - Elis',
    theme: ThemeData(
      primarySwatch: Colors.deepPurple, 
    ),
    debugShowCheckedModeBanner: false,
    home: const StreamHomePage(),
    );
  }
}
class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});
  
  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;

  void changeColor() async {
    await for (var eventColor in colorStream.getColors()) {
      setState(() {
        bgColor = Color(int.parse(eventColor, radix: 16));
      });
    }
  }

  @override
  void initState() {
    super.initState();
    colorStream = ColorStream();
    changeColor();
  }

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream - Elis'),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 143, 112, 197),
      ),
      body: Container(
        decoration: BoxDecoration(color: bgColor),
      ),
    );
  }
}
