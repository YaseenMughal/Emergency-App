import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:helpingproject/constants/color_constant.dart';

class ButonView extends StatelessWidget {
  const ButonView(
      {super.key,
      required this.onpressed,
      required this.text,
      required this.Color});

  final onpressed;
  final String text;
  final Color;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onpressed,
      child: Text(
        text,
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
      ),
      style: OutlinedButton.styleFrom(
          primary: ColorConstant.whiteColor,
          side: BorderSide(width: 3, color: Color),
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          padding: EdgeInsets.all(20)),
    );
  }
}
