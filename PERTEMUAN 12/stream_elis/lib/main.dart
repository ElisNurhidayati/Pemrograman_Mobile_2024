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
  late StreamSubscription subscription;

  late StreamSubscription subscription2;
  String values = '';
  
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

  void stopStream() {
    numberStreamController.close();
  }

  @override
  void initState() {
    super.initState();
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream.asBroadcastStream();

    subscription = stream.listen((event) {
      setState(() {
        values += '$event - ';
      });
    });

    subscription2 = stream.listen((event) {
      setState(() {
        values += '$event -';
      });
    });

    subscription.onError((error) {
      setState(() {
        lastNumber = -1;
      });
    });

    subscription.onDone(() {
      print('OnDone was called');
    });
  }


  @override
  void dispose() {
    numberStreamController.close();
    super.dispose();
    subscription.cancel();
  }

  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    if (!numberStreamController.isClosed) {
      numberStream.addNumberToSink(myNum);
    } else {
      setState(() {
        lastNumber = -1;
      });
    }
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
            Text(values, style: const TextStyle(fontSize: 16)),
            ElevatedButton(
              onPressed: () => addRandomNumber(),
              child: const Text('New Random Number'),
            ),
            ElevatedButton(
              onPressed: () => stopStream(),
              child: const Text('Stop Subscription'),
            )
          ],
        ),
      ),
    );
  }
}
