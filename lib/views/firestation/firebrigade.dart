import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:helpingproject/constants/color_constant.dart';
import 'package:helpingproject/constants/text_constant.dart';
import 'package:helpingproject/views/firestation/servicefire.dart';
import 'package:helpingproject/widgets/button_widget.dart';

class FireBrigadeView extends StatefulWidget {
  const FireBrigadeView({super.key});

  @override
  State<FireBrigadeView> createState() => _FireBrigadeViewState();
}

class _FireBrigadeViewState extends State<FireBrigadeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/1428736.jpg"),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Column(
                children: [
                  Text(TextConstant.FirPro,
                      style: TextStyle(
                          fontSize: 35,
                          color: ColorConstant.whiteColor,
                          fontStyle: FontStyle.italic)),
                  SizedBox(height: 10),
                  Text(TextConstant.HeroFire,
                      style: TextStyle(
                          fontSize: 15,
                          color: ColorConstant.whiteColor,
                          fontStyle: FontStyle.normal)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: ButtonView(
                  onpressed: () {
                    Navigator.pushNamed(context, "fireSer");
                  },
                  text: TextConstant.ExpYou),
            )
          ],
        ),
      ),
    );
  }
}
