import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'descripcionlugar.dart';

class MiMapa extends StatefulWidget {
  const MiMapa({Key? key}) : super(key: key);

  @override
  _MiMapaState createState() => _MiMapaState();
}

class _MiMapaState extends State<MiMapa> {
  @override
  LatLng? milatlong = LatLng(19.43703822893788, -99.15445813772534);
  late CameraPosition _cameraPosition;
  late GoogleMapController _controller;
  Location _location = Location();
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  List<MarkerId> listaMarkerId = List<MarkerId>.empty(growable: true);
  final GlobalKey<ScaffoldState> scafoldkey = GlobalKey<ScaffoldState>();

  void _onMapCreated(GoogleMapController cntr) {
    _controller = cntr;

    /*_location.onLocationChanged.listen((event) {
      _controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
            target: LatLng(event.latitude!, event.longitude!), zoom: 10),
      ));
    });*/
    MarkerId id1 = MarkerId("1");
    MarkerId id2 = MarkerId("2");
    MarkerId id3 = MarkerId("3");
    listaMarkerId.add(id1);
    listaMarkerId.add(id2);
    listaMarkerId.add(id3);
    Marker m1 = Marker(
        markerId: id1,
        position: LatLng(19.43703822893788, -99.15445813772534),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        infoWindow: InfoWindow(title: "Monumento a la Revolucion"));
    Marker m2 = Marker(
        markerId: id2,
        position: LatLng(19.3030530634258, -99.15060279976731),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
        infoWindow: InfoWindow(title: "Estadio Azteca"),
        onTap: () {
          _controller.animateCamera(CameraUpdate.newLatLng(
              LatLng(19.3030530634258, -99.15060279976731)));
          var descripcion =
              scafoldkey.currentState!.showBottomSheet((context) => Container(
                    child: descripcionLugar(
                        "19.3030530634258, -99.15060279976731", context),
                    height: 250,
                    color: Colors.transparent,
                  ));
        });
    Marker m3 = Marker(
        markerId: id3,
        position: LatLng(19.462554732272917, -99.15985849622646),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        infoWindow: InfoWindow(title: "Picasso"));
    setState(() {
      markers[id1] = m1;
      markers[id2] = m2;
      markers[id3] = m3;
    });
  }

  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldkey,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: CameraPosition(target: milatlong!),
              mapType: MapType.normal,
              markers: Set<Marker>.of(markers.values),
              onMapCreated: _onMapCreated,
              myLocationEnabled: true,
              zoomControlsEnabled: true,
              zoomGesturesEnabled: true,
            ),
          ],
        ),
      ),
    );
  }
}
