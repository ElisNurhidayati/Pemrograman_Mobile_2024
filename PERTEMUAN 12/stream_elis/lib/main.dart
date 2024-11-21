import 'package:flutter/material.dart';
import 'stream.dart';
import 'dart:async';
import 'dart:math';

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

  int lastNumber = 0;
  late StreamController<int> numberStreamController;
  late NumberStream numberStream;

  late StreamTransformer transformer;
  
  void changeColor() async {
    colorStream.getColors().listen((eventColor) {
      setState(() {
        bgColor = Color(int.parse(eventColor, radix: 16));
      });
    });

    // await for (var eventColor in colorStream.getColors()) {
    //   setState(() {
    //     bgColor = Color(int.parse(eventColor, radix: 16));
    //   });
    // }
  }

  @override
  void initState() {
    transformer = StreamTransformer<int, int>.fromHandlers(
        handleData: (value, sink) {
          sink.add(value * 10);
        },
        handleError: (error, trace, sink) {
          sink.add(-1);
        },
        handleDone: (sink) => sink.close());

    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream;
    
    stream.transform(transformer).listen((event) {
      setState(() {
        lastNumber = event;
      });
    }).onError((error) {
      setState(() {
        lastNumber = -1;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    numberStreamController.close();
    super.dispose();
  }

  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    numberStream.addNumberToSink(myNum);
    // numberStream.addError();
  }

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream - Elis'),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 143, 112, 197),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(lastNumber.toString(),
                style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            ElevatedButton(
              onPressed: () => addRandomNumber(),
              child: const Text('New Random Number'),
            )
          ],
        ),
      ),
    );
  }
}
