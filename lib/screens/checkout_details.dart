import 'package:flutter/material.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

class CheckoutDetails extends StatefulWidget {
  const CheckoutDetails({Key? key}) : super(key: key);

  @override
  _CheckoutDetailsState createState() => _CheckoutDetailsState();
}

class _CheckoutDetailsState extends State<CheckoutDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: myBlack,
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            children: [
               heightBox(context, 0.1),
               text(context, "Checkout Details",0.06, myWhite,bold: true),
               heightBox(context, 0.04),
               Row(

                 children: [
                   Container(
                     width: dynamicWidth(context, 0.85),
                     height: dynamicHeight(context, 0.25),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Colors.yellow, Colors.orange]),
                        color: myBlack,
                        borderRadius:
                            BorderRadius.only(
                            topRight:Radius.circular(dynamicWidth(context, 0.05)),
                            bottomRight: Radius.circular(dynamicWidth(context, 0.05)),
                        )
                      ),
                   ),
                 ],
               )
            ],

          ),
        ),
      ),
    );
  }
}
