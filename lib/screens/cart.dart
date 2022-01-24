import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/item_viewer.dart';
import 'package:warehouse_gym/utils/app_routes.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/essential_widgets.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor : myBlack,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: dynamicWidth(context, 0.05),
            ),
            child: Column(
              children: [
                heightBox(context, 0.02),
                homeBar(context),
                heightBox(context, 0.03),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        text(context, "We Sell Everything You Need", 0.06,
                            myBlack,
                            bold: true),
                      ],
                    ),
                    heightBox(context, 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        text(
                            context,
                            "Muscles soo big that you can't go through a door",
                            0.04,
                            myGrey),
                      ],
                    ),
                    heightBox(context, 0.04),
                    rowText(context, "Categories", "", 0.06, myBlack, true),
                    heightBox(context, 0.02),
                    Container(
                      width: dynamicWidth(context, 1),
                      height: dynamicHeight(context, 0.2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          dynamicWidth(context, 0.8),
                        ),
                      ),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 9,
                          itemBuilder: (
                            context,
                            i,
                          ) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: dynamicWidth(context, 0.02),
                                vertical: dynamicHeight(context, 0.0125),
                              ),
                              child: Container(
                                width: dynamicWidth(context, 0.3),
                                // height :dynamicHeight(context,0.2),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: myGrey,
                                        blurRadius: 4,
                                        offset: Offset(0, 1), // Shadow position
                                      ),
                                    ],
                                    color: myWhite,
                                    borderRadius: BorderRadius.circular(
                                        dynamicWidth(context, 0.06))),

                                child: Padding(
                                  padding: EdgeInsets.only(
                                      bottom: dynamicHeight(context, 0.02)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: dynamicWidth(context, 0.3),
                                        height: dynamicHeight(context, 0.08),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                              dynamicWidth(context, 0.06),
                                            ),
                                            topRight: Radius.circular(
                                              dynamicWidth(context, 0.06),
                                            ),
                                          ),
                                          child: Image.network(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdvQOu6H5EjLrzFA_yaU4UhuTNqsHSexLYAA&usqp=CAU",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      text(context, "Dumbbells", 0.04, myBlack,
                                          bold: true),
                                      CircleAvatar(
                                        radius: dynamicWidth(context, 0.037),
                                        backgroundColor:
                                            myGrey.withOpacity(0.3),
                                        child: CircleAvatar(
                                          radius: dynamicWidth(context, 0.035),
                                          backgroundColor: myWhite,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: dynamicWidth(
                                                    context, 0.01)),
                                            child: Icon(
                                              Icons.arrow_forward_ios,
                                              color: myBlack,
                                              size: dynamicWidth(context, 0.04),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    heightBox(context, 0.02),
                    rowText(context, "Accessories", "Show All", 0.06, myBlack,
                        true),
                    heightBox(context, 0.02),
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      primary: true,
                      shrinkWrap: true,
                      itemCount: 5,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: (160.0 / 170.0),
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: dynamicWidth(context, 0.01),
                            vertical: dynamicHeight(context, 0.01),
                          ),
                          child: InkWell(
                            onTap: () {
                              push(
                                context,
                                ItemViewer(),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: myWhite,
                                borderRadius: BorderRadius.circular(
                                  dynamicWidth(context, 0.1),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: myGrey,
                                    blurRadius: 4,
                                    offset: Offset(0, 1), // Shadow position
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: dynamicWidth(context,0.02),
                                    bottom: dynamicHeight(context, 0.03)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: dynamicWidth(context, 0.43),
                                      height: dynamicHeight(context, 0.1),
                                      child: ClipRRect(
                                        // borderRadius: BorderRadius.only(
                                        //   topLeft: Radius.circular(
                                        //     dynamicWidth(context, 0.06),
                                        //   ),
                                        //   topRight: Radius.circular(
                                        //     dynamicWidth(context, 0.06),
                                        //   ),
                                        // ),
                                        child: Image.network(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdvQOu6H5EjLrzFA_yaU4UhuTNqsHSexLYAA&usqp=CAU",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              dynamicWidth(context, 0.03)),
                                      child: text(
                                          context, "Item", 0.05, myBlack,
                                          bold: true),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              dynamicWidth(context, 0.03)),
                                      child:
                                          text(context, "500Rs", 0.04, myGrey),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
