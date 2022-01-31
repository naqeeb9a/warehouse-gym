import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/fitness_classes.dart';
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widget.dart';

class ClassesDetails extends StatefulWidget {
  const ClassesDetails({Key? key}) : super(key: key);

  @override
  _ClassesDetailsState createState() => _ClassesDetailsState();
}

class _ClassesDetailsState extends State<ClassesDetails> {
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
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: dynamicWidth(context, 0.04),
                vertical: dynamicHeight(context, 0.02),
              ),
              child: Column(
                children: [
                  bar(context, true,
                      centerCheck: true,
                      centerText: "Crossfit Training",
                      back: true),
                  heightBox(context, 0.01),
                  SizedBox(
                    height: dynamicHeight(context, 0.5),
                    child: ListView(
                      children: [
                        CarouselSlider(
                          items: [
                            // 1
                            Container(
                              margin: const EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://whgym.com/wp-content/uploads/2021/02/WHGYM-ALQUOZ-52-scaled.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            // 2
                            // Container(
                            //   margin: const EdgeInsets.all(6.0),
                            //   decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(8.0),
                            //     image: const DecorationImage(
                            //       image: NetworkImage(
                            //           "https://media.istockphoto.com/photos/heavy-weight-exercise-picture-id625739874?k=20&m=625739874&s=612x612&w=0&h=d8wzQd8HzzG__eSPo5-t4tEm6mBJotmR4zSqktUOFGM="),
                            //       fit: BoxFit.cover,
                            //     ),
                            //   ),
                            // ),
                            // 3
                            Container(
                              margin: const EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://whgym.com/wp-content/uploads/2021/02/WHGYM-ALQUOZ-8-scaled.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://whgym.com/wp-content/uploads/2021/02/WHGYM-ALQUOZ-20-scaled.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                          options: CarouselOptions(
                            autoPlay: true,
                            height: dynamicHeight(context, 0.5),
                            enlargeCenterPage: true,
                            enableInfiniteScroll: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            viewportFraction: 0.8,
                          ),
                        ),
                      ],
                    ),
                  ),
                  heightBox(context, 0.01),

                  //print(classesData[1]['descripiton']);
                  Flexible(
                    child: text(
                        context,
                        classesData[0]['descripiton'].toString(),
                        .04,
                        myWhite,bold:true),
                  ),
                  heightBox(context,0.02),
                  Row(
                    mainAxisAlignment : MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text(context,'Offered in :\n', 0.044,myYellow,bold:true),
                      text(
                          context,
                          "AL QOUZ\n \nDUBAI DESIGN DISTRICT\n \nKHANWANEEJ\n \nO-14 BUSINESS BAY",
                          0.04,
                          myWhite,
                          bold: true),
                    ],
                  ),
                  

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
