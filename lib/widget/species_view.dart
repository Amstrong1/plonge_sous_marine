import 'package:flutter/material.dart';

class SpeciesView extends StatelessWidget {
  final String name;
  final String imageAsset;

  const SpeciesView(this.name, this.imageAsset, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
