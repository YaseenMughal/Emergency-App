import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:helpingproject/views/policestation/servicepolice.dart';

class MedicalServiceView extends StatefulWidget {
  const MedicalServiceView({super.key});

  @override
  State<MedicalServiceView> createState() => _MedicalServiceViewState();
}

class _MedicalServiceViewState extends State<MedicalServiceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/hospital4.jpg"),
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
                  Containe("assets/images/medical0.1.png"),
                  Containe("assets/images/doctors.png"),
                  Containe("assets/images/doctor1.png"),
                  Containe("assets/images/doctor2.png"),
                  Containe("assets/images/doctor3.png"),
                  Containe("assets/images/medical1.png"),
                  Containe("assets/images/medical2.png"),
                  Containe("assets/images/medical3.png"),
                  Containe("assets/images/medical4.png"),
                  Containe("assets/images/medical5.png"),
                  Containe("assets/images/medical6.png"),
                  Containe("assets/images/medical7.png"),
                  Containe("assets/images/medical8.png"),
                  Containe("assets/images/medical9.png"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
