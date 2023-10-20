import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:v1/model/equipment.dart';
import 'package:v1/widget/diving_materials.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:v1/helpers/global.dart';

class GridViewMaterial extends StatelessWidget {
  GridViewMaterial({super.key});

  final List<Equipment> divingMaterials = [];

  Future<void> fetchFirstCenterDiving() async {
    try {
      final response = await http.get(Uri.parse(
          'https://laplongeesousmarine.fr/api/get_plonge_materiels/${MyGlobal.centerInfo[0]['id']}'));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);

        if (jsonData is List<dynamic>) {
          for (var i = 0; i < jsonData.length; i++) {
            Equipment equipment = Equipment(
              id: jsonData[i]['materiel']['id'],
              title: jsonData[i]['materiel']['nom'],
              imageAsset: jsonData[i]['materiel']['image'],
            );
            divingMaterials.add(equipment);
          }
        }

        if (kDebugMode) {
          print(divingMaterials);
        }
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchFirstCenterDiving(),
      builder: ((builder, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox(
            width: 10,
            height: 10,
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else {
          return GridView(
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1 / 2,
              crossAxisCount: 3,
            ),
            children: divingMaterials
                .map((catData) =>
                    DivingMaterial(catData.title, catData.imageAsset))
                .toList(),
          );
        }
      }),
    );
  }
}
