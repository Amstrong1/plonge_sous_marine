import 'package:flutter/material.dart';
import 'package:v1/widget/grid_view_title.dart';
import 'package:v1/widget/static_bottom_bar.dart';

import '../helpers/global.dart';

class DivingInfoScreen extends StatelessWidget {
  const DivingInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Informations'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 4, right: 6),
                    child: Icon(
                      Icons.error,
                      size: 50.0,
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Pour effectuer cette plongée vous devez avoir le matériel adapté. Vous pouvez soit le commander ou appeler le centre de plongée pour une location.',
                      softWrap: true,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: GridViewMaterial(),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0), // Coins arrondis
                  color: Colors.white, // Couleur de fond du cadre
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Description de la plongée',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '${MyGlobal.centerInfo[0]['description']}',
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.anchor),
                        const SizedBox(width: 10),
                        Text('${MyGlobal.centerInfo[0]['profondeur']} m'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(Icons.access_time),
                        const SizedBox(width: 10),
                        Text('${MyGlobal.centerInfo[0]['temps']} h'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(Icons.call_to_action),
                        const SizedBox(width: 10),
                        Text('${MyGlobal.centerInfo[0]['palier']}'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const StaticBottomBar(),
    );
  }
}
