import 'package:flutter/material.dart';
import 'package:helpingproject/screens/map_screen.dart';
import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      Navigator.pushNamed(context, "login");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/emergency.jpg"),
                      fit: BoxFit.fill)),
            ),
            Center(
              child: Container(
                height: 300,
                width: 380,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/spl.png"),
                        fit: BoxFit.fill)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
