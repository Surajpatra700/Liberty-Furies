// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:liberty_furies/actions/Utils.dart';
import 'package:liberty_furies/google%20maps/searchLocation.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  String maptheme = "";
  Completer<GoogleMapController> _controller = Completer();

  final _kGoogleplex =
      CameraPosition(target: LatLng(37.419857, -122.078827), zoom: 14);

  List<Marker> _marker = [];

  Future getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) {
      Utils(check: false).toastMessage(error.toString());
    });
    return Geolocator.getCurrentPosition();
  }

  void loadData() {
    getUserCurrentLocation().then((value) async {
      _marker.add(
        Marker(
          markerId: MarkerId("2"),
          position: LatLng(value.latitude, value.longitude),
          icon: BitmapDescriptor.defaultMarker,
          infoWindow: InfoWindow(
            title: "My Current Location",
          ),
        ),
      );
      final GoogleMapController controller = await _controller.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
          zoom: 14, target: LatLng(value.latitude, value.longitude))));
      setState(() {});
    });
  }

  void setMapStyle() async {
    await rootBundle
        .loadString("assets/maptheme/standardmode.json")
        .then((value) {
      maptheme = value;
    });
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
    setMapStyle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Location"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchLocation()));
            },
          ),
          PopupMenuButton(
              icon: Icon(Icons.more_vert),
              itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: Text("Standard Mode"),
                      onTap: () {
                        _controller.future.then((value) {
                          rootBundle
                              .loadString("assets/maptheme/standardmode.json")
                              .then((string) {
                            value.setMapStyle(string);
                          });
                        });
                      },
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Text("Retro Mode"),
                      onTap: () {
                        _controller.future.then((value) {
                          // we can use rootbundle or DefaultAssetBundle.of(context) to call any file inside assets directory
                          rootBundle
                              .loadString("assets/maptheme/retromode.json")
                              .then((string) {
                            value.setMapStyle(string);
                          });
                        });
                      },
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: Text("Night Mode"),
                      onTap: () {
                        _controller.future.then((value) {
                          rootBundle
                              .loadString("assets/maptheme/nightmode.json")
                              .then((string) {
                            value.setMapStyle(string);
                          });
                        });
                      },
                    ),
                    PopupMenuItem(
                      value: 4,
                      child: Text("Dark Mode"),
                      onTap: () {
                        _controller.future.then((value) {
                          // we can use rootbundle or DefaultAssetBundle.of(context) to call any file inside assets directory
                          rootBundle
                              .loadString("assets/maptheme/darkmode.json")
                              .then((string) {
                            value.setMapStyle(string);
                          });
                        });
                      },
                    ),
                  ]),
        ],
      ),
      body: GoogleMap(
        initialCameraPosition: _kGoogleplex,
        compassEnabled: true,
        markers: Set<Marker>.of(_marker),
        onMapCreated: (controller) {
          controller.setMapStyle(maptheme);
          _controller.complete(controller);
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50.0),
        child: FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          onPressed: () {
            //_controller.
          },
          child: Icon(Icons.center_focus_strong),
        ),
      ),


      drawer: Drawer(
        child: Column(
        children: [
          Container(
              height: 210,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black,
                  Color.fromARGB(99, 4, 12, 239),
                ],
              )),
              child: Center(
                child: Text(
              "Liberty Furies",
              style: TextStyle(
                  fontSize: 39,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Lobster',
                  color: Colors.white),
            )),
          ),   
        ]
      ),
      ),
    );
  }
}
