import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:location/location.dart';

class MiMapa extends StatefulWidget {
  const MiMapa({Key? key}) : super(key: key);

  @override
  _MiMapaState createState() => _MiMapaState();
}

class _MiMapaState extends State<MiMapa> {
  @override
  LatLng? milatlong = LatLng(19.432608, -99.133209);

  //LocationData _currentPosition;

  late CameraPosition _cameraPosition;

  late GoogleMapController _controller;

  Location _location = Location();

  final Set<Marker> markers = new Set();

  void _onMapCreated(GoogleMapController cntr) {
    _controller = cntr;

    _location.onLocationChanged.listen((event) {
      _controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
            target: LatLng(event.latitude!, event.longitude!), zoom: 10),
      ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: CameraPosition(target: milatlong!),

              mapType: MapType.normal,

              onMapCreated: _onMapCreated,

              //markers: ,

              myLocationEnabled: true,
            ),
          ],
        ),
      ),
    );
  }
}
