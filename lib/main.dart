import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:helpingproject/screens/map_screen.dart';
import 'package:helpingproject/screens/splash.dart';
import 'package:helpingproject/views/firestation/firebrigade.dart';
import 'package:helpingproject/views/firestation/servicefire.dart';
import 'package:helpingproject/views/medicalcenter/medical.dart';
import 'package:helpingproject/views/medicalcenter/servicemedical.dart';
import 'package:helpingproject/views/policestation/police.dart';
import 'package:helpingproject/views/policestation/servicepolice.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green[700],
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "splash",
      routes: {
        "splash": (context) => SplashView(),
        "home": (context) => ServicView(),
        "fire": (context) => FireBrigadeView(),
        "fireSer": (context) => FireServiceView(),
        "police": (context) => PoliceView(),
        "policeSer": (context) => PoliceServiceview(),
        "medical": (context) => MedicalView(),
        "medicalSer": (context) => MedicalServiceView()
      },
    );
  }
}
