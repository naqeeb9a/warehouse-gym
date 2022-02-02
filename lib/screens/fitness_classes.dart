import "package:flutter/material.dart";
import 'package:warehouse_gym/screens/classes_details.dart';
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/utils/app_routes.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widget.dart';

class FitnessClasses extends StatefulWidget {
  const FitnessClasses({Key? key}) : super(key: key);

  @override
  _FitnessClassesState createState() => _FitnessClassesState();
}

List classesData = [
  {
    'image':
        'https://whgym.com/wp-content/uploads/2021/02/crossfit-thumnail-300x275.jpg',
    'classname': ' Crossfit Training ',
    'descripiton':
        'The most complete strength and conditioning class. Full CrossFit programme with foundation and ladies classes.',
    'images1': {}
  },
  {
    'image':
        'https://whgym.com/wp-content/uploads/2021/02/Bootcamp-thumnail-300x275.jpg',
    'classname': ' Circuits ',
    'descripiton':
        'A 45 minute HIIT & strength class using approximately 60% strength based exercises and 40% cardiovascular.',
  },
  {
    'image':
        'https://whgym.com/wp-content/uploads/2021/02/WHGYM-ALQUOZ-8-200x300.jpg',
    'classname': ' Ladies Crossfit ',
    'descripiton':
        'CrossFit is designed to improve your overall physical abilities, including your endurance, strength, flexibility, speed, coordination, balance, and more. This class is based in our private ladies only gyms & studio spaces.',
  },
  {
    'image': 'https://whgym.com/wp-content/uploads/2020/10/G60-300x200.jpg',
    'classname': ' BlackBox ',
    'descripiton':
        'Warehouse gym’s Signature Class. A high intensity, immersive multi-sensory experience using Skillmills, Skiergs and FitBench.',
  },
  {
    'image':
        'https://whgym.com/wp-content/uploads/2021/02/cycle-thumnail-1-300x275.jpg',
    'classname': ' Cycle ',
    'descripiton':
        'A 45 minute cycle class with pumping music, lights and lots of hills and sprints to navigate through in a high intensity, calorie-torching sweat session.',
  },
  {
    'image':
        'https://whgym.com/wp-content/uploads/2021/02/kids-boxing-thumnail-300x275.jpg',
    'classname': ' Kids Boxing ',
    'descripiton':
        'A 45 minute boxing and bodyweight class using traditional boxing techniques, strikes, footwork and combinations.',
  },
  {
    'image':
        'https://whgym.com/wp-content/uploads/2021/02/cycle-thumnail-1-300x275.jpg',
    'classname': ' Ladies Cycle ',
    'descripiton': 'Same great class but for ladies only. ',
  },
  {
    'image': 'https://whgym.com/wp-content/uploads/2021/02/boxfit-300x200.jpg',
    'classname': ' BoxFit ',
    'descripiton':
        'A 45-minute boxing bag and bodyweight workout. using traditional boxing techniques, strikes, footwork and combinations.',
  },
  {
    'image':
        'https://whgym.com/wp-content/uploads/2021/02/whgym-73-200x300.jpg',
    'classname': ' Grit ',
    'descripiton':
        'A 60min strength and conditioning circuit class using cardio machine, barbells, kettlebells and more that is exclusive to Warehouse Gym.',
  },
  {
    'image':
        'https://whgym.com/wp-content/uploads/2021/02/circuits-300x200.jpg',
    'classname': ' ladies Circuits ',
    'descripiton':
        'CrossFit is designed to improve your overall physical abilities, including your endurance, strength, flexibility, speed, coordination, balance, and more. This class is based in our private ladies only gyms & studio spaces.',
  },
  {
    'image':
        'https://whgym.com/wp-content/uploads/2021/02/P1333524-300x225.jpg',
    'classname': ' ladies Abs & Glutes ',
    'descripiton':
        'A 45 minute low impact class focused solely on the glutes and abs.',
  }
];

class _FitnessClassesState extends State<FitnessClasses> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: myBlack,
        body: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: dynamicWidth(context, 1),
            height: dynamicHeight(context, 1),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: dynamicWidth(context, 0.04),
                  vertical: dynamicHeight(context, 0.02),
                ),
                child: Column(
                  children: [
                    bar(context, true,
                        centerCheck: true,
                        centerText: "Fitness Classes",
                        back: true),
                    heightBox(context, 0.01),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      primary: true,
                      shrinkWrap: true,
                      itemCount: classesData.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: (160.0 / 170.0),
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            push(
                              context,
                              ClassesDetails(
                                name: classesData[index]['classname'],
                              ),
                            );
                          },
                          child: fitness(context, classesData[index]["image"],
                              classesData[index]["classname"]),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget fitness(context, image, name) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: dynamicWidth(context, 0.02),
      vertical: dynamicHeight(context, 0.01),
    ),
    child: Container(
      width: dynamicWidth(context, 0.25),
      height: dynamicHeight(context, 0.2),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(image),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            color: myYellow,
            child: text(context, name, 0.04, myBlack, bold: true),
          ),
          heightBox(context, 0.025),
        ],
      ),
    ),
  );
}
