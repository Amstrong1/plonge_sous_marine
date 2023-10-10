import 'package:flutter/material.dart';
import 'package:v1/widget/static_bottom_bar.dart';

class AddCenter extends StatelessWidget {
  const AddCenter({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 14),
      backgroundColor: const Color.fromRGBO(70, 145, 16, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.only(left: 25, right: 25, top: 8, bottom: 8),
    );

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Carte lieu'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.location_on,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'lieu',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: style,
                  onPressed: () {},
                  child: const Text('Lieu exploré'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(19, 69, 106, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const StaticBottomBar(),
    );
  }
}
