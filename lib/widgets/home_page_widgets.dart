import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as math;
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

import 'essential_widgets.dart';

Widget gymCardsRow(context, img, index) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: dynamicHeight(context, 0.01)),
    height: dynamicHeight(context, 0.07),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: dynamicHeight(context, 0.07),
          width: dynamicWidth(context, 0.15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(dynamicWidth(context, 0.03)),
            child: Image.network(
              img,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            text(context, "Exercise " + index, 0.04, myBlack, bold: true),
            Row(
              children: [
                roundWidget(context, Icons.timer, "  5 min", Colors.green,
                    check: true),
                widthBox(context, 0.05),
                roundWidget(context, Icons.local_fire_department, "  120 cal",
                    Colors.orange,
                    check: true),
              ],
            )
          ],
        ),
        widthBox(context, 0.05),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: myBlack.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 8,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.play_arrow,
              color: Colors.orange,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget gymCards(context, img, {check = false}) {
  return Container(
    margin: EdgeInsets.all(dynamicWidth(context, 0.04)),
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: myBlack.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        color: myWhite,
        borderRadius: BorderRadius.circular(dynamicWidth(context, 0.1))),
    height: dynamicHeight(context, 0.32),
    width: dynamicWidth(context, 0.8),
    child: Column(
      children: [
        Stack(
          children: [
            SizedBox(
              height: dynamicHeight(context, 0.17),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(dynamicWidth(context, 0.1)),
              child: Image.network(
                img,
                fit: BoxFit.cover,
                height: dynamicHeight(context, 0.16),
                width: dynamicWidth(context, 0.8),
              ),
            ),
            check == true
                ? Container()
                : Positioned(
                    bottom: 0,
                    right: dynamicWidth(context, 0.05),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: myBlack.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  )
          ],
        ),
        Expanded(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: dynamicWidth(context, 0.05)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                text(context, "Body Building", 0.045, myBlack, bold: true),
                text(context, "Full body workout", 0.035, myGrey),
                heightBox(context, 0.01),
                Row(
                  children: [
                    roundWidget(context, Icons.timer, "  35 min", Colors.green),
                    widthBox(context, 0.05),
                    roundWidget(context, Icons.local_fire_department,
                        "  120 cal", Colors.orange)
                  ],
                ),
                heightBox(context, 0.01),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget roundWidget(context, icon, text1, color, {check = false}) {
  return Container(
    decoration: (check == true)
        ? null
        : BoxDecoration(
            border: Border.all(width: 1, color: color),
            borderRadius: BorderRadius.circular(dynamicWidth(context, 0.1)),
            color: color.withOpacity(0.1)),
    padding: check == true ? null : EdgeInsets.all(dynamicWidth(context, 0.02)),
    child: Row(
      children: [
        Icon(
          icon,
          color: color,
          size: dynamicWidth(context, 0.04),
        ),
        text(context, text1, 0.035, color, bold: true)
      ],
    ),
  );
}

Widget plansForTodayCard(context, progressDegrees, fadeInDuration) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: dynamicWidth(context, 0.1)),
    decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [Colors.yellow, Colors.blue]),
        color: Colors.purple,
        borderRadius: BorderRadius.circular(dynamicWidth(context, 0.1))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(context, "My Plan", 0.06, myWhite),
            text(context, "For Today", 0.06, myWhite),
            text(context, "5/7 Complete", 0.04, myWhite)
          ],
        ),
        customProgress(context, progressDegrees, fadeInDuration)
      ],
    ),
  );
}

class RadialPainter extends CustomPainter {
  double progressInDegrees;

  RadialPainter(this.progressInDegrees);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black12
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0;

    Offset center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, size.width / 2, paint);

    Paint progressPaint = Paint()
      ..shader = const LinearGradient(
              colors: [Colors.deepPurple, Colors.purple, Colors.purpleAccent])
          .createShader(Rect.fromCircle(center: center, radius: size.width / 2))
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0;

    canvas.drawArc(
        Rect.fromCircle(center: center, radius: size.width / 2),
        math.radians(-90),
        math.radians(progressInDegrees),
        false,
        progressPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
