import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:liberty_furies/actions/Utils.dart';
import 'package:uuid/uuid.dart';

class SearchLocation extends StatefulWidget {
  const SearchLocation({super.key});

  @override
  State<SearchLocation> createState() => _SearchLocationState();
}

class _SearchLocationState extends State<SearchLocation> {
  Completer<GoogleMapController> _controller = Completer();
  final searchController = TextEditingController();
  final uuid = Uuid();
  String _sessionToken = "12345";
  List<dynamic> _placesList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchController.addListener(() {
      onChanged();
    });
  }

  void onChanged() {
    if (_sessionToken == null) {
      setState(() {
        _sessionToken = uuid.v4();
      });
    }
    getSuggestion(searchController.text);
  }

  void getSuggestion(String input) async {
    String GMAPS_API_KEY = "AIzaSyCyUwk3wia97AdTqllVKeFvY8NWlA2RPwQ";
    String baseUrl =
        "https://maps.googleapis.com/maps/api/place/autocomplete/json";
    String request =
        "$baseUrl?input=$input&key=$GMAPS_API_KEY&sessiontoken=$_sessionToken";
    var response = await http.get(Uri.parse(request));
    if (response.statusCode == 200) {
      setState(() {
        _placesList = jsonDecode(response.body.toString())['predictions'];
      });
    } else {
      Utils(check: false).toastMessage("failed to load data");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Location"),
        centerTitle: true,
        backgroundColor: Colors.indigo.shade400,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: "Search places with name",
                prefixIcon: Icon(Icons.search),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          Expanded(child: ListView.builder(
            itemCount: _placesList.length,
            itemBuilder: ((context, index) {
              return ListTile(
                title: Text(_placesList[index]["description"]),
                onTap: () async{
                  List<Location> location = await locationFromAddress(_placesList[index]["description"]);
                  final GoogleMapController controller = await _controller.future;
                  //controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(location.latitude, location.longitude))));
                },
              );
            }),
          ))
        ],
      ),
    );
  }
}
