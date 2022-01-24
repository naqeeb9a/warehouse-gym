import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/sleep_details.dart';
import 'package:warehouse_gym/screens/steps_details.dart';
import 'package:warehouse_gym/screens/water_details.dart';
import 'package:warehouse_gym/utils/app_routes.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/essential_widgets.dart';
import 'package:warehouse_gym/widgets/home_page_widgets.dart';

import 'calories_details.dart';
import 'home.dart';
import 'login.dart';

class MyPlan extends StatelessWidget {
  const MyPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: dynamicWidth(context, 0.05)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightBox(context, 0.02),
              bar(context, true,
                  centerCheck: true, centerText: "My Plan", back: true),
              heightBox(context, 0.06),
              rowText(context, "Daily Plan", "Statics", 0.06, myBlack, true),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      spacing: dynamicWidth(context, .05),
                      runSpacing: dynamicWidth(context, .05),
                      children: [
                        InkWell(
                          onTap: () {
                            push(
                              context,
                              const CaloriesDetails(),
                            );
                          },
                          child: workoutBox(context, "Calories", "1000", "Kcal",
                              Icons.local_fire_department_outlined, myOrange),
                        ),
                        InkWell(
                          onTap: () {
                            push(
                              context,
                              const StepsDetails(),
                            );
                          },
                          child: workoutBox(
                            context,
                            "Steps",
                            "720",
                            "Steps",
                            Icons.directions_walk_outlined,
                            myPurple,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            push(
                              context,
                              const SleepDetails(),
                            );
                          },
                          child: workoutBox(
                            context,
                            "Sleep",
                            "6 hr",
                            "Hours",
                            Icons.bed,
                            myGreen,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            push(
                              context,
                              const WaterDetails(),
                            );
                          },
                          child: workoutBox(
                            context,
                            "Water",
                            "2 Lits",
                            "liters",
                            Icons.whatshot_outlined,
                            myBlue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                "Goal In Progress",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: dynamicWidth(context, 0.06)),
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
            ],
          ),
        ),
      ),
    );
  }
}
