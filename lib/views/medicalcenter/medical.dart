import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:helpingproject/constants/color_constant.dart';
import 'package:helpingproject/constants/text_constant.dart';
import 'package:helpingproject/views/medicalcenter/servicemedical.dart';
import 'package:helpingproject/widgets/button_widget2.dart';

class MedicalView extends StatefulWidget {
  const MedicalView({super.key});

  @override
  State<MedicalView> createState() => _MedicalViewState();
}

class _MedicalViewState extends State<MedicalView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/hospital2.jpg"),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35, left: 15),
              child: Text(TextConstant.HosLin,
                  style: TextStyle(
                      fontSize: 25,
                      color: ColorConstant.whiteColor,
                      fontStyle: FontStyle.normal)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: ButonView(
                  onpressed: () {
                    Navigator.pushNamed(context, "medicalSer");
                  },
                  text: TextConstant.ExpYou),
            )
          ],
        ),
      ),
    );
  }
}
