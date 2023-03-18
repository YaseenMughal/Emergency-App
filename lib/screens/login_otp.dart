import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:helpingproject/constants/color_constant.dart';
import 'package:helpingproject/constants/text_constant.dart';
import 'package:helpingproject/widgets/button_widget.dart';
import 'package:helpingproject/widgets/button_widget2.dart';
import 'package:pinput/pinput.dart';

class LoginView extends StatelessWidget {
  TextEditingController _PinPutcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 44, 43, 43),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 44, 43, 43),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_sharp),
            color: ColorConstant.whiteColor,
          )),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  TextConstant.VerC,
                  style: TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 20),
                Text(
                  TextConstant.VerifyC,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: 55),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              child: Pinput(
                closeKeyboardWhenCompleted: true,
                controller: _PinPutcontroller,
                length: 4,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                defaultPinTheme: PinTheme(
                    textStyle:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0))),
              ),
            ),
          ),
          SizedBox(height: 40),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButonView(
                    onpressed: () {
                      Navigator.pushNamed(context, "home");
                    },
                    text: TextConstant.ResC,
                    Color: ColorConstant.whiteColor),
                ButonView(
                    onpressed: () {
                      Navigator.pushNamed(context, "home");
                    },
                    text: TextConstant.SubC,
                    Color: ColorConstant.whiteColor)
              ],
            ),
          )
        ],
      ),
    );
  }
}
