import 'package:flutter/material.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:vector_math/vector_math_64.dart' as math;
import 'package:warehouse_gym/widgets/text_widge.dart';

class HomePage extends StatefulWidget {
  final double goalCompleted = 0.7;
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  List images = [
    {
      "img":
          "https://s1.1zoom.me/big0/173/Men_Workout_Gym_Muscle_Barbell_581920_1280x853.jpg"
    },
    {
      "img":
          "https://www.wallpaperup.com/uploads/wallpapers/2017/11/19/1157037/b9898ccf2837e5d17cb8860f61293053-700.jpg"
    },
    {
      "img":
          "https://img5.goodfon.com/wallpaper/nbig/1/97/workout-fitness-home.jpg"
    }
  ];
  late AnimationController _radialProgressAnimationController;
  late Animation<double> _progressAnimation;
  final Duration fadeInDuration = const Duration(milliseconds: 500);
  final Duration fillDuration = const Duration(seconds: 2);

  double progressDegrees = 0;
  var count = 0;

  @override
  void initState() {
    super.initState();
    _radialProgressAnimationController =
        AnimationController(vsync: this, duration: fillDuration);
    _progressAnimation = Tween(begin: 0.0, end: 360.0).animate(CurvedAnimation(
        parent: _radialProgressAnimationController, curve: Curves.easeIn))
      ..addListener(() {
        setState(() {
          progressDegrees = widget.goalCompleted * _progressAnimation.value;
        });
      });

    _radialProgressAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: dynamicWidth(context, 0.05)),
                child: Column(
                  children: [
                    heightBox(context, 0.03),
                    homeBar(context),
                    heightBox(context, 0.03),
                    plansforTodayCard(context, progressDegrees, fadeInDuration),
                    heightBox(context, 0.03),
                    rowText(context, "Start New Goal", 0.04, myBlack),
                  ],
                ),
              ),
              SizedBox(
                height: dynamicHeight(context, 0.37),
                width: dynamicWidth(context, 1),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return gymCards(context, images[index]["img"]);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: dynamicWidth(context, 0.05)),
                child: Column(
                  children: [
                    rowText(context, "Daily Task", 0.04, myBlack),
                    ListView.builder(
                      itemCount: images.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(
                          vertical: dynamicHeight(context, 0.02)),
                      itemBuilder: (BuildContext context, int index) {
                        return gymCardsRow(context, images[index]["img"],
                            (index + 1).toString());
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

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
                roundWidget(
                    context, Icons.fireplace, "  120 cal", Colors.orange,
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

Widget gymCards(context, img) {
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
    height: dynamicHeight(context, 0.35),
    width: dynamicWidth(context, 0.8),
    child: Column(
      children: [
        Stack(
          children: [
            SizedBox(
              height: dynamicHeight(context, 0.2),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(dynamicWidth(context, 0.1)),
              child: Image.network(
                img,
                fit: BoxFit.cover,
                height: dynamicHeight(context, 0.18),
                width: dynamicWidth(context, 0.8),
              ),
            ),
            Positioned(
              bottom: 0,
              right: dynamicWidth(context, 0.1),
              child: Container(
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
                text(context, "Body Building", 0.05, myBlack, bold: true),
                text(context, "Full body workout", 0.04, myGrey),
                heightBox(context, 0.01),
                Row(
                  children: [
                    roundWidget(context, Icons.timer, "  35 min", Colors.green),
                    widthBox(context, 0.05),
                    roundWidget(
                        context, Icons.fireplace, "  120 cal", Colors.orange)
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

Widget rowText(context, text1, size, color) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      text(context, text1, size, color),
      text(context, "See all", 0.03, Colors.blue)
    ],
  );
}

Widget homeBar(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text(context, "Good Morning! ", 0.04, myGrey),
          text(context, "Sami Ahmed ", 0.06, myBlack, bold: true),
        ],
      ),
      Row(
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

Widget plansforTodayCard(context, progressDegrees, fadeInDuration) {
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
