import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ButtonView extends StatelessWidget {
  const ButtonView({
    super.key,
    required this.onpressed,
    required this.text,
  });

  final onpressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onpressed,
      child: Text(
        text,
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
      ),
      style: OutlinedButton.styleFrom(
          primary: Color.fromARGB(255, 214, 156, 151),
          side: BorderSide(width: 3, color: Color.fromARGB(255, 136, 21, 13)),
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          padding: EdgeInsets.all(20)),
    );
  }
}
