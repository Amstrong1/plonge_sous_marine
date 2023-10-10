import 'package:flutter/material.dart';
import 'package:v1/widget/bottom_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: const BottomNavigationBarWidget(page: 0),
    );
  }
}
