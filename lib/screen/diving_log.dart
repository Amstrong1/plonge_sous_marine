import 'package:flutter/material.dart';
import 'package:v1/widget/diving_log.dart';
import 'package:v1/widget/static_bottom_bar.dart';
import 'package:v1/screen/add_diving_log.dart';

class DivingLog extends StatelessWidget {
  const DivingLog({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 14),
      backgroundColor: const Color.fromRGBO(19, 69, 106, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.only(left: 25, right: 25, top: 8, bottom: 8),
    );

     void addLog(BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) {
            return const AddDivingLog();
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Carnet de journal'),
      ),
      body: Container(
        color: Colors.grey[100],
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
              style: style,
              onPressed: () => addLog(context),
              child: const Text('Ajouter une plongée'),
            ),
            const SizedBox(height: 20),
            const Expanded(
              child: DivingLogList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const StaticBottomBar(),
    );
  }
}
