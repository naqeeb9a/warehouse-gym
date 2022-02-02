import "package:flutter/material.dart";
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/screens/trainer_view.dart';
import 'package:warehouse_gym/utils/app_routes.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/home_page_widgets.dart';
import 'package:warehouse_gym/widgets/text_widget.dart';

// ignore: must_be_immutable
class TrainerDetail extends StatefulWidget {
  String category;
  dynamic image;
  TrainerDetail({required this.category, required this.image, Key? key})
      : super(key: key);

  @override
  _TrainerDetailState createState() => _TrainerDetailState();
}

List coachesData = [
  {
    "image":
        "https://cdn.muscleandstrength.com/sites/default/files/chest_feature.jpg",
    "name": "Nick Johns",
    "experience": "5 Years Experience",
    "cilent": "21 Active Cilent",
    "work": "4 Work Experience",
    "rating": "4.8"
  },
  {
    "image":
        "https://www.healthkart.com/connect/wp-content/uploads/2016/05/Banner-33.jpg",
    "name": "Alex Johnson",
    "experience": "4 Years Experience",
    "cilent": "18 Active Cilent",
    "work": "6 Work Experience",
    "rating": "4.6"
  },
  {
    "image":
        "https://www.bodybuilding.com/images/2016/october/5-insider-tips-for-building-a-bigger-chest-header-2-960x540.jpg",
    "name": "David Butt",
    "experience": "7 Years Experience",
    "cilent": "25 Active Cilent",
    "work": "6 Work Experience",
    "rating": "4.3"
  },
  {
    "image":
        "https://www.bodybuilding.com/images/2016/june/6-best-intermediate-chest-workouts-for-building-muscle-v2-1-700xh.jpg",
    "name": "Kabby Scoot",
    "experience": "2 Years Experience",
    "cilent": "12 Active Cilent",
    "work": "3 Work Experience",
    "rating": "4.1"
  }
];

class _TrainerDetailState extends State<TrainerDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: myBlack,
        body: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                  width: dynamicWidth(context, 1),
                  height: dynamicHeight(context, 0.3),
                  decoration: BoxDecoration(
                    color: myWhite,
                    image: DecorationImage(
                      image: NetworkImage(widget.image),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          myBlack.withOpacity(.5), BlendMode.colorBurn),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: dynamicWidth(context, 0.04),
                      vertical: dynamicHeight(context, 0.02),
                    ),
                    child: Column(
                      children: [
                        bar(context, true,
                            centerCheck: true,
                            centerText: widget.category,
                            back: true),
                      ],
                    ),
                  )),
            ),
            Positioned(
              bottom: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(dynamicWidth(context, 0.1)),
                    topRight: Radius.circular(dynamicWidth(context, 0.1))),
                child: Container(
                  width: dynamicWidth(context, 1),
                  height: dynamicHeight(context, 0.7),
                  color: myBlack,
                  child: Column(
                    children: [
                      heightBox(context, 0.03),
                      text(context, "Our Best Coaches", 0.035, myYellow,
                          bold: true),
                      heightBox(context, 0.03),
                      SizedBox(
                        height: dynamicHeight(context, 0.6),
                        width: dynamicWidth(context, 1),
                        child: ListView.builder(
                            itemCount: coachesData.length,
                            shrinkWrap: true,
                            //physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.symmetric(
                                vertical: dynamicHeight(context, 0.02)),
                            itemBuilder: (BuildContext context, int index) {
                              return coaches(
                                context,
                                coachesData[index]['image'],
                                coachesData[index]['name'],
                                coachesData[index]['experience'],
                                coachesData[index]['cilent'],
                                coachesData[index]['work'],
                                coachesData[index]['rating'],
                                widget.category,
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget coaches(
    context, image, name, experience, cilent, work, rating, expertise) {
  return InkWell(
    onTap: () {
      push(
          context, TrainerView(image: image, name: name, expertise: expertise, work: work, experience: experience, cilent: cilent));
    },
    child: Container(
      margin: EdgeInsets.symmetric(vertical: dynamicHeight(context, 0.02)),
      width: dynamicWidth(context, 0.9),
      height: dynamicHeight(context, 0.08),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: dynamicHeight(context, 0.08),
            width: dynamicWidth(context, 0.15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(dynamicWidth(context, 0.03)),
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // widthBox(context,0.01),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              text(context, name, 0.04, myWhite, bold: true),
              roundWidget(context, Icons.timer, experience, Colors.green,
                  check: true),
              widthBox(context, 0.02),
              roundWidget(
                  context, Icons.local_fire_department, cilent, Colors.orange,
                  check: true)
            ],
          ),
          widthBox(context, 0.04),
          Row(
            children: [
              Icon(Icons.star,
                  color: myYellow, size: dynamicHeight(context, 0.02)),
              text(context, rating, 0.03, myGrey)
            ],
          ),
        ],
      ),
    ),
  );
}
