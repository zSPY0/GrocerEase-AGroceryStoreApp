import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart'
as permission_handler;


class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  late GoogleMapController _mapController;
  static const LatLng _initialCameraPosition = LatLng(25.2855, 51.5310);
  final Set<Marker> _markers = {};
  final Completer<GoogleMapController> _controllerCompleter = Completer();
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _requestLocationPermission();
  }

  void _requestLocationPermission() async {
    permission_handler.PermissionStatus status =
    await permission_handler.Permission.location.request();
    if (status.isDenied || status.isPermanentlyDenied) {
      // Permission denied, handle accordingly
      // You can show a dialog or navigate to a screen explaining the importance of location permission
    } else if (status.isGranted) {
      // Permission granted, proceed with getting the current location
      _getCurrentLocation();
    }
  }

  void _onMapCreated(GoogleMapController controller) {
    _controllerCompleter.complete(controller);
    _mapController = controller;
  }

  void _getCurrentLocation() async {
    LocationData? locationData;
    var location = Location();
    try {
      locationData = await location.getLocation();
    } catch (e) {
      print('Error getting location: $e');
    }

    if (locationData != null) {
      setState(() {
        _markers.add(
          Marker(
            markerId: const MarkerId('current_location'),
            position: LatLng(locationData!.latitude!, locationData.longitude!),
            icon: BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueRed, // Change the marker color
            ),
          ),
        );
      });

      final GoogleMapController controller = await _controllerCompleter.future;
      controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(locationData.latitude!, locationData.longitude!),
            zoom: 15,
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location'),
      ),
      body: Stack(
          children: [
      GoogleMap(
      initialCameraPosition:
      const CameraPosition(target: _initialCameraPosition, zoom: 16),
      onMapCreated: _onMapCreated,
      markers: _markers,
      zoomControlsEnabled: false,
        // Remove the zoom controls
    ),
            Positioned(
              bottom: 230.0,
              right: 16.0,
              child: ElevatedButton(
                onPressed: () {
                  _getCurrentLocation();
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(9.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  backgroundColor: Colors.blue,
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.my_location,
                      size: 22.0,
                    ),
                    SizedBox(width: 5.0), // Add a small space between the icon and text
                    Text(
                      'Locate Me',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 3.0 * 72.0, // 2.5 inches (72 pixels per inch)
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: const Offset(0, 1),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        height: 54.0,
                        width: 365,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          border: Border.all(
                            color:const Color(0xD0D0D0D5),
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.02),
                              offset: const Offset(0, 9),
                              blurRadius: 9.0,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 16.0, right: 8.0),
                              child: Icon(Icons.search),
                            ),
                            Expanded(
                              child: TextField(
                                controller: _searchController,
                                textAlign: TextAlign.left,
                                decoration: const InputDecoration(
                                  hintText: 'Search for a location',
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                ),
                                onChanged: (value) {
                                  // Handle search functionality here
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30.0),


                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "/home");
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      child: Container(
                        width: 370,
                        height: 53.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          color: Colors.green,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.7),
                              spreadRadius: 0,
                              blurRadius: 2,
                              offset: const Offset(0, 4), // Offset to create the shadow at the bottom
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Confirm Location',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
      ),
    );
  }
}




