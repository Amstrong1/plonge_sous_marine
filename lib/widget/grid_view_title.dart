import 'package:flutter/material.dart';
import 'package:v1/setter/dummy_data.dart';
import 'package:v1/widget/diving_materials.dart';

class GridViewMaterial extends StatelessWidget {
  const GridViewMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        // maxCrossAxisExtent: 150,
        childAspectRatio: 1 / 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 3,
      ),
      children: dummyMaterials
          .map((catData) => DivingMaterial(catData.title, catData.imageAsset))
          .toList(),
    );
  }
}
