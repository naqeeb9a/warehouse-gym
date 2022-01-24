import 'package:flutter/material.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';

Widget paymentCard(context,paymentMethod,image) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: dynamicWidth(context, 0.05)),
    width: dynamicWidth(context, 0.9),
    height: dynamicHeight(context, 0.125),
    decoration: BoxDecoration(
      color: myWhite,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius : dynamicWidth(context, 0.09),
          backgroundColor: myBlack,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal:dynamicWidth(context, 0.01),vertical:dynamicWidth(context, 0.01)),
            child: Image(
              image: NetworkImage(image),
              width: dynamicWidth(context, 0.15),
              color:myWhite,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  paymentMethod,
                  style: TextStyle(
                    fontSize: dynamicWidth(context, 0.05),
                    color: myBlack,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: dynamicHeight(context, 0.007),
            ),
            Row(
              children: [
                Text(
                  "Account",
                  style: TextStyle(
                    fontSize: dynamicWidth(context, 0.04),
                    color: myBlack,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
         width: dynamicWidth(context, 0.1),
          
        ),
        const Radio(
          value: "yes",
          groupValue: null,
          onChanged: null,
          visualDensity: VisualDensity(horizontal: -4),
        ),
      ],
    ),
  );
}
