import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widget.dart';

class VideoPlayers extends StatefulWidget {
  // final VideoPlayerController videoPlayerController;
  // final bool looping;
  const VideoPlayers({Key? key}) : super(key: key);

  @override
  _VideoPlayersState createState() => _VideoPlayersState();
}

class _VideoPlayersState extends State<VideoPlayers> {
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();

    _chewieController = ChewieController(
        videoPlayerController: VideoPlayerController.network(
            "https://player.vimeo.com/external/456095317.sd.mp4?s=1acd490d856e9aed1afc000fed9cf481c05c3f1c&amp;profile_id=165&amp;oauth2_token_id=57447761"),
        aspectRatio: 18/36,
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
        bottomNavigationBar:Padding(
           padding: EdgeInsets.symmetric(
              horizontal: dynamicWidth(context, 0.02),
              vertical: dynamicHeight(context, 0.01),
            ),
          child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width:dynamicWidth(context,0.45),
                          height: dynamicHeight(context, 0.045),
                          //color:myYellow,
                          child:Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[ 
                                const Icon(Icons.thumb_up_alt_outlined,color:myYellow),
                                widthBox(context, 0.01),
                                text(context, "Like", 0.04, myWhite),
                               ]
                            )
                          )
                        ),
                        VerticalDivider(
                          thickness: dynamicWidth(context, 0.001), 
                          width : dynamicWidth(context, 0.01),
                          color: myWhite,
                                      
                        ),
                        SizedBox(
                          width: dynamicWidth(context, 0.45),
                          height: dynamicHeight(context, 0.045),
                           child: Center(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                 const Icon(Icons.thumb_down_alt_outlined,color:myYellow),
                                   widthBox(context, 0.01),
                                  text(context, "Unlike", 0.04, myWhite),
                                ]))
                        ),
                      ],
                    ),
                  ),
        ), 
        backgroundColor: myBlack,
        body: SingleChildScrollView(
          child: Padding(
           
            padding: EdgeInsets.symmetric(
              horizontal: dynamicWidth(context, 0.02),
              vertical: dynamicHeight(context, 0.01),
            ),
            child: Column(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                bar(context, true,
                    centerCheck: true, centerText: "Excercise 1", back: true),
                heightBox(context, 0.02),
                SizedBox(
                  width:dynamicWidth(context, 1),
                  height: dynamicHeight(context, 0.78),
                  child: Chewie(controller: _chewieController),
                ),
                heightBox(context, 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    text(context, "View", 0.03, myWhite,bold:true),
                    text(context, "(1,099)", 0.03, myYellow,bold :true),
                    widthBox(context, 0.02),
                  ],
                ),
                
                heightBox(context, 0.02),
                // Divider(
                //   color: myOrange,
                //   thickness: dynamicWidth(context, 0.001),
                // ),
                
                // Divider(
                //   color: myOrange,
                //   thickness: dynamicWidth(context, 0.001),
                // ),
      
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
