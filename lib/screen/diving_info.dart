import 'package:flutter/material.dart';
import 'package:v1/widget/grid_view_title.dart';
import 'package:v1/widget/static_bottom_bar.dart';

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
            const SizedBox(
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
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                    SizedBox(height: 10),
                    Text(
                      'Pour effectuer cette plongée vous devez avoir le matériel adapté. Vous pouvez soit le commander ou appeler le centre de plongée pour une location. » Mettre un bouton appeler pour appeler le centre de plongée. Liste du matériel à avoir pour cette plongée. Si l\'utilisateur n\'a pas un article il peut le commander via mon compte Amazon pour l\'acheter. Les flèches noires sont toujours les informations données par le centre de plongée dans son espace.',
                      style: TextStyle(
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
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.anchor),
                        SizedBox(width: 10),
                        Text('Profondeur'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.access_time),
                        SizedBox(width: 10),
                        Text('Temps'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.call_to_action),
                        SizedBox(width: 10),
                        Text('Paliers'),
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
