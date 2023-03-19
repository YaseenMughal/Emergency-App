import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:helpingproject/constants/color_constant.dart';

class ServicView extends StatefulWidget {
  const ServicView({super.key});

  @override
  State<ServicView> createState() => _ServicViewState();
}

class _ServicViewState extends State<ServicView> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  final List<Marker> _marker = <Marker>[
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(45.521563, -122.677433),
        infoWindow: InfoWindow(title: 'The Tittle of The Marker'))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Google Map !',
          style: TextStyle(color: Color.fromARGB(255, 8, 1285, 12)),
        ),
        elevation: 10,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: Set<Marker>.of(_marker),
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SpeedDial(
        icon: Icons.add_chart,
        activeIcon: Icons.emergency_share_outlined,
        buttonSize: const Size(70, 70),
        visible: true,
        closeManually: false,
        renderOverlay: true,
        curve: Curves.easeInBack,
        overlayColor: Colors.black,
        direction: SpeedDialDirection.up,
        children: [
          SpeedDialChild(
              label: 'Ambulance Service',
              onTap: () {
                Navigator.pushNamed(context, "medical");
              }),
          SpeedDialChild(
              label: 'FireBrigade Service',
              onTap: () {
                Navigator.pushNamed(context, "fire");
              }),
          SpeedDialChild(
              label: 'Police Service',
              onTap: () {
                Navigator.pushNamed(context, "police");
              }),
        ],
      ),
    );
  }
}
