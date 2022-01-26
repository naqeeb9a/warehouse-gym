import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/screens/payment_screen.dart';
import 'package:warehouse_gym/utils/app_routes.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/place_widget.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

class Place extends StatefulWidget {
  const Place({Key? key}) : super(key: key);

  @override
  _PlaceState createState() => _PlaceState();
}

class _PlaceState extends State<Place> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: myBlack,
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: dynamicHeight(context, 0.05)),
            child: SizedBox(
              width: dynamicWidth(context, .9),
              height: dynamicHeight(context, .86),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      bar(
                        context,
                        true,
                        centerCheck: true,
                        back: true,
                      ),
                      text(
                        context,
                        "Choose Gym",
                        .07,
                        myWhite,
                        bold: true,
                      ),
                    ],
                  ),
                  heightBox(context, 0.025),
                  Expanded(
                    child: SingleChildScrollView(
                      child: SizedBox(
                        width: dynamicWidth(context, 0.9),
                        child: Wrap(
                            runSpacing: 15,
                            direction: Axis.horizontal,
                            children: [
                              placeCard(context, "SPRINGS SOUK", "Dubai",
                                  "https://static.dezeen.com/uploads/2019/10/warehouse-gym-springs-interiors-vshd-design_dezeen_1704_col_2.jpg"),
                              placeCard(context, "AL QUOZ", "Dubai",
                                  "https://whgym.com/wp-content/uploads/elementor/thumbs/Al-Quoz-2-phi5gc1btya3l37eqpjiwxe59e55tg8rdbq41xa8jo.jpg"),
                              placeCard(context, "DIFC", "Dubai",
                                  "https://whgym.com/wp-content/uploads/elementor/thumbs/DIFC-1-phi5i8njouw14mfqm17agy2smiqyfct5yrck34ghxg.jpg"),
                              placeCard(context, "JUMEIRAH-PARK", "Dubai",
                                  "https://whgym.com/wp-content/uploads/elementor/thumbs/JUMEIRAH-PARK-phi5h0h4rn7jyy7ws03tpr84pespdkxs4ooqj4a01w.jpg"),
                              placeCard(context, "KHAWANEEJ", "Dubai",
                                  "https://whgym.com/wp-content/uploads/elementor/thumbs/KHAWANEEJ-phi5jjnh6kod94jgzlimxm7ubsbb47zqt7yu2yitac.jpg"),
                              placeCard(context, "IBN-BATTUTA", "Dubai",
                                  "https://whgym.com/wp-content/uploads/elementor/thumbs/IBN-BATTUTA--phi5ksrqame4qepxo50q9atyua4xdoyuzfa548nwzo.jpg"),
                              placeCard(context, "BUSINESS BAY", "Dubai",
                                  "https://whgym.com/wp-content/uploads/elementor/thumbs/KHAWANEEJ-phi5jjnh6kod94jgzlimxm7ubsbb47zqt7yu2yitac.jpg"),
                              placeCard(
                                  context,
                                  "DUBAI DESIGN DISTRICT",
                                  "Dubai",
                                  "https://whgym.com/wp-content/uploads/elementor/thumbs/D3-phi5ncvwwdw8c704q8u61nl521iwc14k037q5cvc1w.jpg"),
                            ]),
                      ),
                    ),
                  ),
                  heightBox(context, 0.025),
                  colorfulButton(
                    context,
                    "Choose",
                    myBlack,
                    myYellow,
                    function: () {
                      push(
                        context,
                        const PaymentScreen(),
                      );
                    },
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
