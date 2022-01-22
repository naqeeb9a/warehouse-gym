import 'package:flutter/material.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/essential_widgets.dart';

import 'login.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: dynamicWidth(context, 0.05),
          ),
          child: Column(
            children: [
              heightBox(context, 0.02),
              bar(context, true, centerCheck: true, centerText: "My Cart",pop: true),
              heightBox(context, 0.01),
              itemCard(context, "Warehouse Gym", "10kg", "5000"),
            ],
          ),
        ),
      ),
    );
  }
}
