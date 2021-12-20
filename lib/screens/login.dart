import 'package:flutter/material.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [bar(context)],
        ),
      ),
    );
  }
}

Widget bar(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(Icons.arrow_back_ios),
      text(context, "Need Help", 0.03, Colors.grey)
    ],
  );
}
