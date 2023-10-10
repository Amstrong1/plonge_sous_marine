import 'package:flutter/material.dart';

class DivingViews extends StatelessWidget {
  final String imageAsset;

  const DivingViews(this.imageAsset, {super.key});

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
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: Colors.blue, width: 3),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
