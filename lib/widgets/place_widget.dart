import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/gym_details.dart';
import 'package:warehouse_gym/utils/app_routes.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widget.dart';

Widget placeCard(context, place, image) {
  return Container(
      //padding: EdgeInsets.symmetric(horizontal: dynamicWidth(context, 0.05)),
      width: dynamicWidth(context, 0.9),
      height: dynamicHeight(context, 0.15),
      decoration: BoxDecoration(
        color: myWhite,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(myBlack.withOpacity(.5), BlendMode.colorBurn),
          image: NetworkImage(image),
        ),
      ),
      child: Column(
        crossAxisAlignment :CrossAxisAlignment.start,
        children: [
        heightBox(context, 0.025),
        Container(
          color: myYellow,
          child: text(context, place , 0.044, myBlack, bold: true),
        ),
      ])
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       mainAxisAlignment: MainAxisAlignment.end,
      //       children: [
      //         Row(
      //           children: [
      //             Text(
      //               place,
      //               style: TextStyle(
      //                 fontSize: dynamicWidth(context, 0.06),
      //                 color: myYellow,
      //                 fontWeight: FontWeight.w700,
      //               ),
      //             ),
      //           ],
      //         ),
      //         SizedBox(
      //           height: dynamicHeight(context, 0.007),
      //         ),
      //         Row(
      //           children: [
      //             Text(
      //               name,
      //               style: TextStyle(
      //                 fontSize: dynamicWidth(context, 0.04),
      //                 color: myWhite,
      //                 fontWeight: FontWeight.w500,
      //               ),
      //             ),
      //           ],
      //         ),
      //         SizedBox(
      //           height: dynamicHeight(context, 0.007),
      //         ),
      //       ],
      //     ),
      //     // const Radio(
      //   value: "yes",
      //   groupValue: null,
      //   onChanged: null,
      //   visualDensity: VisualDensity(horizontal: -4),
      //     // ),
      //   ],
      // ),
      );
}
