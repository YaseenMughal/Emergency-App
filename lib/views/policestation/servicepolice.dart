import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PoliceServiceview extends StatefulWidget {
  const PoliceServiceview({super.key});

  @override
  State<PoliceServiceview> createState() => _PoliceServiceviewState();
}

class _PoliceServiceviewState extends State<PoliceServiceview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/poleis1.2.jpg"),
                fit: BoxFit.fill)),
        child: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children: <Widget>[
                  Containe("assets/images/PngItem_1355177.png"),
                  Containe("assets/images/police2.png"),
                  Containe("assets/images/police6.png"),
                  Containe("assets/images/police1.png"),
                  Containe("assets/images/police3.png"),
                  Containe("assets/images/police5.png"),
                  Containe("assets/images/police4.png"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Containe(String Image) {
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Image))),
  );
}
