import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/bottom_nav.dart';
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/utils/app_routes.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/payment_widget.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: myBlack,
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: dynamicHeight(context, 0.035),
            ),
            child: SizedBox(
              width: dynamicWidth(context, .9),
              height: dynamicHeight(context, .87),
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
                        "Payment Method",
                        .07,
                        myWhite,
                        bold: true,
                      )
                    ],
                  ),
                  heightBox(context, 0.02),
                  paymentCard(context,"Apple Pay",
                      "https://th.bing.com/th/id/R.22031d47ff205a4aedfcbd0feaac2502?rik=9H8MC%2fnfgiy0JQ&riu=http%3a%2f%2flogos-download.com%2fwp-content%2fuploads%2f2016%2f09%2fApple_Pay_logo.png&ehk=xCbjh5G1JZBTNhGK4XZASFVMwsRdNXZvoO%2fRZhiF3fo%3d&risl=&pid=ImgRaw&r=0"),
                  paymentCard(context,"Google Pay","https://th.bing.com/th/id/R.fcd16a3389b7f88c4aa5539d33f50646?rik=XMDu%2bWhbTv9Z2Q&riu=http%3a%2f%2fpurepng.com%2fpublic%2fuploads%2flarge%2fpurepng.com-google-pay-gpay-logobrandlogobrand-logoiconssymbolslogosgoogle-681522937443muxmx.png&ehk=T0t7fG5EZDdrGrQa8NAjSkNLTbX4ACe%2fDS0EiktfW8g%3d&risl=&pid=ImgRaw&r=0"),
                  paymentCard(context,"Credit Card","https://th.bing.com/th/id/R.89f8cfd38f504096c6d575ad1b5894bb?rik=IpE%2bfnLGJoA3dQ&pid=ImgRaw&r=0"),
                  paymentCard(context,"By Hand","https://th.bing.com/th/id/R.41c3f0ffc2269cc72359aa486da0c70d?rik=AUZIEAGEVbHabQ&pid=ImgRaw&r=0"),
                  heightBox(context, 0.04),
                  colorfulButton(
                    context,
                    "Choose",
                    myBlack,
                    myYellow,
                    function: () {
                      push(
                        context,
                        const BottomNavBar(),
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
