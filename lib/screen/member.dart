import 'package:flutter/material.dart';
import 'package:v1/widget/dropdown.dart';
import 'package:v1/widget/two_tab.dart';

class MemberScreen extends StatelessWidget {
  const MemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const AutocompleteDropDown(),
          const SizedBox(height: 20),
          SizedBox(
            height: 500,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
              child: const TwoTab(),
            ),
          ),
        ],
      ),
    );
  }
}
