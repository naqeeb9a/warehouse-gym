import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/place_widget.dart';

class TrainerCategory extends StatefulWidget {
  const TrainerCategory({Key? key}) : super(key: key);

  @override
  _TrainerCategoryState createState() => _TrainerCategoryState();
}

class _TrainerCategoryState extends State<TrainerCategory> {
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
                  vertical: dynamicHeight(context, 0.02)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  bar(
                    context,
                    true,
                    centerCheck: true,
                    back: true,
                    centerText: "Trainer Category",
                  ),
                  heightBox(context, 0.03),
                  Expanded(
                    child: SingleChildScrollView(
                      child: SizedBox(
                        width: dynamicWidth(context, 0.9),
                        child: Wrap(
                          runSpacing: 15,
                          direction: Axis.horizontal,
                          children: [
                            placeCard(context, " BOXING ",
                                "https://www.muscleandfitness.com/wp-content/uploads/2020/05/boxer-training-bag.jpg?quality=86&strip=all"),
                            placeCard(context, " KARATE ",
                                "https://www.cnet.com/a/img/u1GXV5wAty7pZdWZHYQfFRQJL3M=/1200x630/2019/08/07/5feebd5e-5363-41fb-bc1b-da29adaa9595/karate.png"),
                            placeCard(context, " BODYBUILDING ",
                                "https://steroids-usa.org/wp-content/uploads/2021/01/Bodybuilder-654x368-1.jpg"),
                            placeCard(context, " CATHLETICS ",
                                "https://caliathletics.com/wp-content/uploads/2018/09/Planche-The-ultimate-tutorial-and-step-by-step-progressions-1024x429.jpg"),
                            placeCard(context, " ATHLETICS ",
                                "https://www.mensjournal.com/wp-content/uploads/mf/1280-sled-push.jpg?quality=86&strip=all"),
                            placeCard(context, " MMA FIGHTING ",
                                "https://evolve-vacation.com/wp-content/uploads/2019/07/Troy-ONE-Championship-e1563439258511.jpg"),
                            placeCard(context, " BOXFIT ",
                                "https://i.pinimg.com/originals/5d/62/0e/5d620e5b869b55c4be5e2911c85d668e.jpg"),
                            // placeCard(context, " DUBAI DESIGN DISTRICT ",
                            //     "https://whgym.com/wp-content/uploads/elementor/thumbs/D3-phi5ncvwwdw8c704q8u61nl521iwc14k037q5cvc1w.jpg"),
                          ],
                        ),
                      ),
                    ),
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
