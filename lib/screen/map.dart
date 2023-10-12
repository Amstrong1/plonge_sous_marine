import 'package:latlong2/latlong.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:v1/widget/static_bottom_bar.dart';
import 'package:v1/screen/add_place.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 14),
      backgroundColor: const Color.fromRGBO(19, 69, 106, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.only(left: 25, right: 25, top: 8, bottom: 8),
    );

    void addCenter(BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) {
            return const AddCenter();
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Carte globale'),
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: const LatLng(46.603354, 1.888334),
              zoom: 6.0,
            ),
            children: [
              TileLayer(
                urlTemplate:
                    'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: const ['a', 'b', 'c'],
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: const LatLng(48.8566, 2.3522), // Paris coordinates
                    builder: (ctx) => const Icon(
                      Icons.location_on,
                      color: Colors.blue,
                      size: 40.0,
                    ),
                  ),
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point:
                        const LatLng(43.296398, 5.370000), // Paris coordinates
                    builder: (ctx) => const Icon(
                      Icons.location_on,
                      color: Colors.green,
                      size: 40.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: style,
                  onPressed: () => addCenter(context),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text('Ajouter un lieu'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 5.0,
            right: 30.0, // Alignement à droite
            child: CircleAvatar(
              backgroundColor: Color.fromRGBO(19, 69, 106, 1),
              child: Icon(
                Icons.menu,
                size: 20.0,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 100,
              padding: const EdgeInsets.only(top: 20, left: 40),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Colors.grey[100],
              ),
              child: const Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 20.0,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 10),
                      Text('Lieux non explorés')
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 20.0,
                        color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text('Lieux explorés')
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const StaticBottomBar(),
    );
  }
}
