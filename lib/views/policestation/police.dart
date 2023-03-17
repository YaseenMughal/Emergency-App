import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:helpingproject/constants/text_constant.dart';
import 'package:helpingproject/views/policestation/servicepolice.dart';
import 'package:helpingproject/widgets/button_widget.dart';

class PoliceView extends StatefulWidget {
  const PoliceView({super.key});

  @override
  State<PoliceView> createState() => _PoliceViewState();
}

class _PoliceViewState extends State<PoliceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Police Station.png"),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            SizedBox(height: 347),
            Text(TextConstant.policPass,
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 36, 16, 2),
                    fontStyle: FontStyle.normal)),
            SizedBox(height: 230),
            ButtonView(
                onpressed: () {
                  Navigator.pushNamed(context, "policeSer");
                },
                text: TextConstant.ExpYou)
          ],
        ),
      ),
    );
  }
}
