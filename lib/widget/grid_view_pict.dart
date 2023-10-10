import 'package:flutter/material.dart';
import 'package:v1/setter/dummy_data.dart';
import 'package:v1/widget/center_views.dart';

class GridViewCenter extends StatelessWidget {
  const GridViewCenter({super.key});

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
      children: dummyPictures
          .map((catData) => DivingViews(catData.imageAsset))
          .toList(),
    );
  }
}
