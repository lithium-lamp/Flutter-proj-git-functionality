import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(-33.86, 151.20);

  

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle action chip tap
        // Add your functionality here
      },
      child: CupertinoListSection.insetGrouped(
        backgroundColor:const Color.fromARGB(0, 0, 0, 0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 239, 239, 239),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        children: [
          SizedBox(
            height: 300,
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 11.0,
              ),
              markers: {
                const Marker(
                  markerId: MarkerId('Sydney'),
                  position: LatLng(-33.86, 151.20),
                )
              },
            ),
          ),
        ],
      ),
    );
  }
}
