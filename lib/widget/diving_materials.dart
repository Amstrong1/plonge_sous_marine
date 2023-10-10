import 'package:flutter/material.dart';

class DivingMaterial extends StatelessWidget {
  final String title;
  final String imageAsset;

  const DivingMaterial(this.title, this.imageAsset, {super.key});

  @override
  Widget build(BuildContext context) {
    final style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: const Color.fromRGBO(35, 87, 155, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
    );

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: const Color.fromRGBO(35, 87, 155, 1),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.asset(
                      imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              style: style,
              onPressed: () {},
              child: const Text('Commander'),
            ),
          ],
        ),
      ),
    );
  }
}
