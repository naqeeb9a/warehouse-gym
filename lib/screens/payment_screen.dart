import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/payment_widget.dart';

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
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: dynamicHeight(context, 0.035),
            ),
            child: SizedBox(
              width: dynamicWidth(context, .9),
              height: dynamicHeight(context, .91),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  bar(
                    context,
                    true,
                    centerCheck: true,
                    back: true,
                    centerText: "Payment Method"
                  ),
                  heightBox(context, 0.04),
                  paymentCard(context,"Apple Pay",
                      "https://th.bing.com/th/id/R.22031d47ff205a4aedfcbd0feaac2502?rik=9H8MC%2fnfgiy0JQ&riu=http%3a%2f%2flogos-download.com%2fwp-content%2fuploads%2f2016%2f09%2fApple_Pay_logo.png&ehk=xCbjh5G1JZBTNhGK4XZASFVMwsRdNXZvoO%2fRZhiF3fo%3d&risl=&pid=ImgRaw&r=0"),
                  paymentCard(context,"Google Pay","https://th.bing.com/th/id/R.fcd16a3389b7f88c4aa5539d33f50646?rik=XMDu%2bWhbTv9Z2Q&riu=http%3a%2f%2fpurepng.com%2fpublic%2fuploads%2flarge%2fpurepng.com-google-pay-gpay-logobrandlogobrand-logoiconssymbolslogosgoogle-681522937443muxmx.png&ehk=T0t7fG5EZDdrGrQa8NAjSkNLTbX4ACe%2fDS0EiktfW8g%3d&risl=&pid=ImgRaw&r=0"),
                  paymentCard(context,"Credit Card","https://th.bing.com/th/id/R.89f8cfd38f504096c6d575ad1b5894bb?rik=IpE%2bfnLGJoA3dQ&pid=ImgRaw&r=0"),
                  paymentCard(context,"By Hand","https://icon-library.com/images/hand-streched-money-dollar-outline-512.png"),
                  heightBox(context, 0.04),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
