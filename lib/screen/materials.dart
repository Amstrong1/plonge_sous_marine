import 'package:flutter/material.dart';
import 'package:v1/widget/material_list.dart';
import 'package:v1/widget/static_bottom_bar.dart';

class Materials extends StatelessWidget {
  const Materials({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Equipements'),
      ),
      body: Container(
        color: Colors.grey[100],
        padding: const EdgeInsets.all(20),
        child: const Column(
          children: [
            Expanded(
              child: DivingMaterialList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const StaticBottomBar(),
    );
  }
}
