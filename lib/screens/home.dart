import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/my_plan.dart';
import 'package:warehouse_gym/utils/app_routes.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/essential_widgets.dart';
import 'package:warehouse_gym/widgets/home_page_widgets.dart';

class HomePage extends StatefulWidget {
  final double goalCompleted = 0.7;

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
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
class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {

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
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
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
                    heightBox(context, 0.02),
                    homeBar(context),
                    heightBox(context, 0.03),
                    InkWell(
                      onTap: () {
                        push(
                          context,
                          MyPlan(),
                        );
                      },
                      child: plansForTodayCard(
                        context,
                        progressDegrees,
                        fadeInDuration,
                      ),
                    ),
                    heightBox(context, 0.02),
                    rowText(context, "Start New Goal","See all", 0.04, myBlack, false),
                  ],
                ),
              ),
              SizedBox(
                height: dynamicHeight(context, 0.35),
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
                    rowText(context, "Daily Task","See all", 0.04, myBlack, false),
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
