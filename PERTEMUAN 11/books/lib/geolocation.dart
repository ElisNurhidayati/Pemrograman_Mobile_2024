import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  Future<Position>? position;
  String myPosition = '';
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    position = getPosition();
  }

  // void initState() {
  //   super.initState();
  //   getPosition().then((Position myPos) {
  //     setState(() {
  //       myPosition = 'Latitude: ${myPos.latitude} - Longitude: ${myPos.longitude}';
  //       isLoading = false;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Current Location - Elis')),
      body: Center(
        child: FutureBuilder(
          future: position,
          builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.done) {
              return Text(snapshot.data.toString());
            } else {
              return const Text('');
            }
          },
        ),
      ),
    );
  }

  //   final myWidget = isLoading
  //       ? const CircularProgressIndicator()
  //       : Text(myPosition);

  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Current Location - Elis'),
  //       backgroundColor: Colors.blue,
  //     ),
  //     body: Center(child: myWidget),
  //   );
  // }

  Future<Position> getPosition() async {
    await Geolocator.isLocationServiceEnabled();
    await Future.delayed(const Duration(seconds: 3));
    Position position = await Geolocator.getCurrentPosition();

    return position;
  }
}
