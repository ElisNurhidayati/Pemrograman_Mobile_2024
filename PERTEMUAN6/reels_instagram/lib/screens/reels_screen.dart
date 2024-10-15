import 'package:flutter/material.dart';
import 'package:reels_instagram/widget/bottom_navbar.dart';
import 'package:reels_instagram/widget/overlay.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Placeholder for the video background
          Container(
            color: Colors.black,
            child: const Center(
              child: Text(
                'Video Placeholder',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          // Overlay UI
          ReelsOverlay(),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
