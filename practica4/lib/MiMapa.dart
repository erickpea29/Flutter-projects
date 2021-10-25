import 'dart:collection';
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

    MarkerId id1 = MarkerId("1");
    MarkerId id2 = MarkerId("2");
    MarkerId id3 = MarkerId("3");
    MarkerId id4 = MarkerId("4");
    MarkerId id5 = MarkerId("5");
    listaMarkerId.add(id1);
    listaMarkerId.add(id2);
    listaMarkerId.add(id3);
    listaMarkerId.add(id4);
    listaMarkerId.add(id5);
    Marker m1 = Marker(
        markerId: id1,
        position: LatLng(19.42936442462846, -99.20676639999998),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        infoWindow: InfoWindow(title: "Google México"),
        onTap: () {
          _controller.animateCamera(CameraUpdate.newLatLng(
              LatLng(19.42936442462846, -99.20676639999998)));
          var descripcion =
              scafoldkey.currentState!.showBottomSheet((context) => Container(
                    child: descripcionLugar(
                        "Google México",
                        "4.6",
                        "Oficinas de empresa",
                        "19.42936442462846, -99.20676639999998",
                        context,
                        "55 5342 8400"),
                    height: 250,
                    color: Colors.transparent,
                  ));
        });
    Marker m2 = Marker(
        markerId: id2,
        position: LatLng(19.367083498549057, -99.26449331556961),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        infoWindow: InfoWindow(title: "Corporativo Microsoft México"),
        onTap: () {
          _controller.animateCamera(CameraUpdate.newLatLng(
              LatLng(19.367083498549057, -99.26449331556961)));
          var descripcion =
              scafoldkey.currentState!.showBottomSheet((context) => Container(
                    child: descripcionLugar(
                        "Corporativo Microsoft México",
                        "4.2",
                        "Campus corporativo en Ciudad de México",
                        "19.367083498549057, -99.26449331556961",
                        context,
                        "55 5267 2000"),
                    height: 250,
                    color: Colors.transparent,
                  ));
        });
    Marker m3 = Marker(
        markerId: id3,
        position: LatLng(19.429210269029227, -99.20571200001083),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        infoWindow: InfoWindow(title: "Oracle"),
        onTap: () {
          _controller.animateCamera(CameraUpdate.newLatLng(
              LatLng(19.429210269029227, -99.20571200001083)));
          var descripcion =
              scafoldkey.currentState!.showBottomSheet((context) => Container(
                    child: descripcionLugar(
                        "Oracle",
                        "4.5",
                        "Compañía de software en Ciudad de México",
                        "19.429210269029227, -99.20571200001083",
                        context,
                        "55 9178 3000"),
                    height: 250,
                    color: Colors.transparent,
                  ));
        });
    Marker m4 = Marker(
        markerId: id4,
        position: LatLng(19.38770486686859, -99.25106055656701),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
        infoWindow: InfoWindow(title: "Cisco Systems México"),
        onTap: () {
          _controller.animateCamera(CameraUpdate.newLatLng(
              LatLng(19.38770486686859, -99.25106055656701)));
          var descripcion =
              scafoldkey.currentState!.showBottomSheet((context) => Container(
                    child: descripcionLugar(
                        "Cisco Systems México",
                        "4.5",
                        "Oficinas de empresa",
                        "19.38770486686859, -99.25106055656701",
                        context,
                        "55 5267 1000"),
                    height: 250,
                    color: Colors.transparent,
                  ));
        });
    Marker m5 = Marker(
        markerId: id5,
        position: LatLng(19.373178812197178, -99.26138877797781),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
        infoWindow: InfoWindow(title: "IBM de México, S. de R.L. de C.V."),
        onTap: () {
          _controller.animateCamera(CameraUpdate.newLatLng(
              LatLng(19.373178812197178, -99.26138877797781)));
          var descripcion =
              scafoldkey.currentState!.showBottomSheet((context) => Container(
                    child: descripcionLugar(
                        "IBM de México, S. de R.L. de C.V.",
                        "4.6",
                        "Compañía de software en Ciudad de México",
                        "19.373178812197178, -99.26138877797781",
                        context,
                        "55 5270 3000"),
                    height: 250,
                    color: Colors.transparent,
                  ));
        });
    setState(() {
      markers[id1] = m1;
      markers[id2] = m2;
      markers[id3] = m3;
      markers[id4] = m4;
      markers[id5] = m5;
    });
  }

  void initState() {
    super.initState();
  }

  Set<Polygon> myPolygon() {
    List<LatLng> polygonCoords = List<LatLng>.empty(growable: true);
    polygonCoords.add(LatLng(19.400034499374826, -99.2680321922759));
    polygonCoords.add(LatLng(19.400077154605597, -99.26803219250806));
    polygonCoords.add(LatLng(19.400070592958375, -99.26789130556968));
    polygonCoords.add(LatLng(19.40111728560961, -99.26654853286604));
    polygonCoords.add(LatLng(19.401266577018763, -99.26616761858621));
    polygonCoords.add(LatLng(19.40131415369859, -99.26616587927022));
    polygonCoords.add(LatLng(19.401588129520725, -99.26647026520037));
    polygonCoords.add(LatLng(19.401859181065998, -99.26607743106679));
    polygonCoords.add(LatLng(19.40239236615964, -99.26565477184198));
    polygonCoords.add(LatLng(19.402820552378756, -99.26500773578725));
    polygonCoords.add(LatLng(19.40474060027531, -99.26311329541863));
    polygonCoords.add(LatLng(19.404957153934934, -99.26181845415998));
    polygonCoords.add(LatLng(19.405204119916064, -99.2613431506355));
    polygonCoords.add(LatLng(19.4047074903719, -99.26128172101821));
    polygonCoords.add(LatLng(19.40431018701402, -99.26129927238422));
    polygonCoords.add(LatLng(19.404312946040577, -99.26122029172099));
    polygonCoords.add(LatLng(19.4040149683034, -99.2610535552222));
    polygonCoords.add(LatLng(19.404155679293524, -99.26078151065528));
    polygonCoords.add(LatLng(19.40399841379717, -99.26079613603379));
    polygonCoords.add(LatLng(19.40363697674119, -99.2608283132704));
    polygonCoords.add(LatLng(19.40321208026206, -99.26091606965919));
    polygonCoords.add(LatLng(19.402221571033387, -99.26143968245648));
    polygonCoords.add(LatLng(19.401898757192228, -99.26106818063168));
    polygonCoords.add(LatLng(19.40145178369726, -99.26147478533122));
    polygonCoords.add(LatLng(19.401465579057323, -99.26162982187718));
    polygonCoords.add(LatLng(19.401297271913897, -99.26217391176007));
    polygonCoords.add(LatLng(19.400985491323045, -99.26243425421825));
    polygonCoords.add(LatLng(19.400891677626092, -99.26294031635247));
    polygonCoords.add(LatLng(19.400957899791234, -99.26299004449048));
    polygonCoords.add(LatLng(19.400957898216856, -99.26320651065281));
    polygonCoords.add(LatLng(19.40083097901086, -99.26322113572331));
    polygonCoords.add(LatLng(19.400786836808674, -99.26388808521497));
    polygonCoords.add(LatLng(19.40039227942383, -99.2644702007651));
    polygonCoords.add(LatLng(19.400191333152616, -99.26429124577508));
    polygonCoords.add(LatLng(19.39992555741096, -99.26483044177127));
    polygonCoords.add(LatLng(19.40000430277262, -99.26548095680845));
    polygonCoords.add(LatLng(19.399535089383335, -99.2660862452435));
    polygonCoords.add(LatLng(19.39976149107692, -99.26767252709973));

    Set<Polygon> polygonSet = new Set();
    polygonSet.add(Polygon(
        polygonId: PolygonId('test'),
        points: polygonCoords,
        strokeColor: Colors.orange,
        strokeWidth: 2,
        fillColor: Colors.orange.withOpacity(.5)));

    return polygonSet;
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
              polygons: myPolygon(),
            ),
          ],
        ),
      ),
    );
  }
}
