import 'package:flutter/material.dart';

class VideoPlayer extends StatefulWidget {
  final String videoUrl;

  const VideoPlayer(VideoPlayerController controller, {super.key, required this.videoUrl});

  @override
  // ignore: library_private_types_in_public_api
  _ReelsVideoPlayerState createState() => _ReelsVideoPlayerState();
}

class _ReelsVideoPlayerState extends State<VideoPlayer> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {
          _controller.play();
          _isPlaying = true;
        });
      });

    _controller.setLooping(true); // Loop the video for continuous playback
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
        _isPlaying = false;
      } else {
        _controller.play();
        _isPlaying = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _togglePlayPause, // Tap to play/pause the video
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Video player widget
          _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller, videoUrl: '',),
                )
              : const Center(
                  child: CircularProgressIndicator(),
                ),
          // Play/Pause overlay icon
          if (!_isPlaying)
            const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 80.0,
            ),
        ],
      ),
    );
  }
}

class VideoPlayerController {
  get value => null;

  static network(String videoUrl) {}
  
  void dispose() {}
  
  void setLooping(bool bool) {}
  
  void play() {}
  
  void pause() {}
}
