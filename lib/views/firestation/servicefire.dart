import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:helpingproject/views/policestation/servicepolice.dart';

class FireServiceView extends StatefulWidget {
  const FireServiceView({super.key});

  @override
  State<FireServiceView> createState() => _FireServiceViewState();
}

class _FireServiceViewState extends State<FireServiceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image:
                    AssetImage("assets/images/fire-cloud-space-background.jpg"),
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
                  Containe("assets/images/firefighter.png"),
                  Containe("assets/images/firefighter3.png"),
                  Containe("assets/images/firefighter2.png"),
                  Containe("assets/images/firefighter4.png")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
