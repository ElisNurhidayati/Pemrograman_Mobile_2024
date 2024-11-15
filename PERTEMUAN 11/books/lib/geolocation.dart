import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = '';
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getPosition().then((Position myPos) {
      setState(() {
        myPosition = 'Latitude: ${myPos.latitude} - Longitude: ${myPos.longitude}';
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final myWidget = isLoading
        ? const CircularProgressIndicator()
        : Text(myPosition);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Current Location - Elis'),
        backgroundColor: Colors.blue,
      ),
      body: Center(child: myWidget),
    );
  }

  Future<Position> getPosition() async {
    await Future.delayed(const Duration(seconds: 5));
    await Geolocator.requestPermission();
    await Geolocator.isLocationServiceEnabled();
    Position position = await Geolocator.getCurrentPosition();
    
    return position;
  }
}
