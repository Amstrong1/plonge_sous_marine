import 'package:flutter/material.dart';
import 'package:v1/setter/dummy_data.dart';
import 'package:v1/widget/folder_view.dart';

class GridViewFolder extends StatelessWidget {
  const GridViewFolder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 3 / 2,
        crossAxisCount: 1,
      ),
      children: dummyFolder
          .map((catData) => FolderView(catData.name, catData.images))
          .toList(),
    );
  }
}
