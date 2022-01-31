import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/utils/app_routes.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widget.dart';

class VideoPlayer extends StatefulWidget {
  // final VideoPlayerController videoPlayerController;
  // final bool looping;
  const VideoPlayer({Key? key}) : super(key: key);

  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();

    _chewieController = ChewieController(
        videoPlayerController: VideoPlayerController.network(
            "https://player.vimeo.com/external/435700906.sd.mp4?s=a90aaf8373f82fdfd2e2f3c25e3fee31a77b69e5&profile_id=139&oauth2_token_id=57447761"),
        aspectRatio: 16/9,
        autoInitialize: true,
        looping: true,
        fullScreenByDefault: false,
        errorBuilder: (context, message) {
          return Center(
            child: text(context, message, 0.03, myRed),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: myBlack,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: dynamicWidth(context, 0.02),
              vertical: dynamicHeight(context, 0.01),
            ),
            child: Column(
              children: [
                bar(context, true,
                    centerCheck: true, centerText: "Excercise 1", back: true),
                SizedBox(
                  width:dynamicWidth(context, 1),
                  height: dynamicHeight(context, 0.4),
                  child: Chewie(controller: _chewieController),
                ),
                //heightBox(context, 0.6),
      
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
     _chewieController.dispose();
  }
}
