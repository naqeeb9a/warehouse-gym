import 'package:flutter/material.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/home_page_widgets.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

Widget rowText(context, text1, size, color, bold, {check = false}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      text(context, text1, size, color, bold: bold),
      check == true ? Container() : text(context, "See all", 0.03, Colors.blue)
    ],
  );
}

Widget homeBar(context, {check = false, text1 = ""}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      check == true
          ? text(context, text1, 0.06, myBlack, bold: true)
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text(context, "Good Morning! ", 0.04, myGrey),
                text(context, "Sami Ahmed ", 0.06, myBlack, bold: true),
              ],
            ),
      check == true
          ? CircleAvatar(
              radius: dynamicWidth(context, 0.052),
              backgroundImage: const NetworkImage(
                  "https://flyingcdn-942385.b-cdn.net/wp-content/uploads/2018/03/Awesome-Profile-Pictures-for-Guys-look-away2.jpg"),
            )
          : Row(
              children: [
                CircleAvatar(
                  radius: dynamicWidth(context, 0.052),
                  backgroundColor: myGrey.withOpacity(0.3),
                  child: CircleAvatar(
                      radius: dynamicWidth(context, 0.05),
                      backgroundColor: myWhite,
                      child: Icon(
                        Icons.search,
                        color: myBlack,
                        size: dynamicWidth(context, 0.06),
                      )),
                ),
                widthBox(context, 0.05),
                CircleAvatar(
                  radius: dynamicWidth(context, 0.052),
                  backgroundImage: const NetworkImage(
                      "https://flyingcdn-942385.b-cdn.net/wp-content/uploads/2018/03/Awesome-Profile-Pictures-for-Guys-look-away2.jpg"),
                )
              ],
            )
    ],
  );
}

Widget customProgress(context, progressDegrees, fadeInDuration) {
  return CustomPaint(
    child: Container(
      height: dynamicHeight(context, 0.18),
      width: dynamicWidth(context, 0.2),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: AnimatedOpacity(
          opacity: progressDegrees > 30 ? 1.0 : 0.0,
          duration: fadeInDuration,
          child: text(context, "75%", 0.05, myWhite, bold: true)),
    ),
    painter: RadialPainter(progressDegrees),
  );
}
