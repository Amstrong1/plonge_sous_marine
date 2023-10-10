import 'package:flutter/material.dart';
import 'package:v1/setter/dummy_data.dart';
import 'package:v1/widget/species_view.dart';

class GridViewSpecies extends StatelessWidget {
  const GridViewSpecies({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        crossAxisCount: 4,
      ),
      children: dummySpecies
          .map((catData) => SpeciesView(catData.name, catData.imageAsset))
          .toList(),
    );
  }
}
