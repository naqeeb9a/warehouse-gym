import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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

Widget homeBar(context, {check = false, text1 = "", activityCheck = false}) {
  var date = DateTime.now();
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      check == true
          ? text(context, text1, 0.06, myBlack, bold: true)
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                activityCheck == true
                    ? text(context, DateFormat('EEEE').format(date).toString(),
                        0.04, myGrey)
                    : text(context, "Good Morning! ", 0.04, myGrey),
                activityCheck == true
                    ? text(
                        context,
                        DateFormat('dd' " " 'MMMM').format(date).toString(),
                        0.06,
                        myBlack)
                    : text(context, "Sami Ahmed ", 0.06, myBlack, bold: true),
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
                activityCheck == true
                    ? Container()
                    : CircleAvatar(
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

Widget workoutBox(context, text1, text2, text3, icon, color) {
  return Container(
    padding: EdgeInsets.all(dynamicWidth(context, 0.05)),
    width: dynamicWidth(context, 0.45),
    height: dynamicHeight(context, 0.17),
    decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(dynamicWidth(context, 0.1))),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            text(context, text1, 0.04, myBlack, bold: true),
            CircleAvatar(
                backgroundColor: color,
                radius: dynamicWidth(context, 0.035),
                child: Icon(
                  icon,
                  color: myWhite,
                  size: dynamicWidth(context, 0.04),
                )),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(context, text2, 0.05, myBlack, bold: true),
            text(context, text3, 0.03, myGrey),
          ],
        ),
      ],
    ),
  );
}
