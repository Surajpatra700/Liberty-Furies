// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:liberty_furies/actions/Utils.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  Completer<GoogleMapController> _controller = Completer();

  final _kGoogleplex =
      CameraPosition(target: LatLng(37.419857, -122.078827), zoom: 14);

  List<Marker> _marker = [];

  Future getUserCurrentLocation() async{
    await Geolocator.requestPermission().then((value){}).onError((error, stackTrace){
      Utils(check: false).toastMessage(error.toString());
    });
    return Geolocator.getCurrentPosition();
  }

  void loadData(){
    getUserCurrentLocation().then((value){
      _marker.add(
        Marker(
          markerId: MarkerId("2"),
          position: LatLng(value.latitude, value.longitude),
          icon: BitmapDescriptor.defaultMarker,
          infoWindow: InfoWindow(
            title: "My Current Location",
          )
        ),
      );
    });
  }  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _kGoogleplex,
        compassEnabled: true,
        onMapCreated: (controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        //_controller.
      },
      child: Icon(Icons.center_focus_strong),
      ),
    );
  }
}
