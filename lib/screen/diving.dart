import 'package:flutter/material.dart';
import 'package:v1/widget/dropdown.dart';
import 'package:v1/helpers/global.dart';
import 'package:v1/widget/full_width_image.dart';
import 'package:v1/screen/participant_list.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class DivingScreen extends StatelessWidget {
  const DivingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 12),
      backgroundColor: const Color.fromRGBO(19, 69, 106, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.only(left: 25, right: 25, top: 8, bottom: 8),
    );

    void participantsList(BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) {
            return const Participant();
          },
        ),
      );
    }

    Future<void> fetchFirstCenterDiving() async {
      try {
        final response2 = await http.get(
            Uri.parse('https://laplongeesousmarine.fr/api/get_plonge_first'));
        if (response2.statusCode == 200) {
          final jsonData = json.decode(response2.body);

          MyGlobal.centerDive = [
            {
              'id': jsonData['centre']['id'],
              'nom': jsonData['centre']['nom'],
              'lieu': jsonData['centre']['lieu'],
              'statut': jsonData['centre']['statut'],
              'responsable': jsonData['centre']['responsable'],
              'contact': jsonData['centre']['contact'],
              'email': jsonData['centre']['email'],
              'description': jsonData['centre']['description'],
              'titre': jsonData['centre']['titre'],
              'facebook': jsonData['centre']['facebook'],
              'twitter': jsonData['centre']['twitter'],
              'instagram': jsonData['centre']['instagram'],
            },
          ];

          MyGlobal.centerInfo = [
            {
              'id': jsonData['id'],
              'lieu': jsonData['lieu'],
              'duree': jsonData['duree'],
              'prix': jsonData['prix'],
              'nbPlaces': jsonData['nb_places'],
              'image': jsonData['image'],
              'description': jsonData['description'],
              'profondeur': jsonData['profondeur'],
              'temps': jsonData['temps'],
              'palier': jsonData['pallier'],
            },
          ];

          MyGlobal.centerMonitor = [
            {
              'id': jsonData['moniteur']['id'],
              'nom': jsonData['moniteur']['nom'],
              'image': jsonData['moniteur']['image'],
              'bio': jsonData['moniteur']['bio'],
              'note': jsonData['moniteur']['note'],
            },
          ];
        }
      } catch (e) {
        throw Exception(e);
      }
    }

    return FutureBuilder(
      future: fetchFirstCenterDiving(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else {
          return Column(
            children: [
              const AutocompleteDropDown(),
              FullWidthImageWithText(
                imageAssetName: '${MyGlobal.centerInfo[0]['image']}',
                opacity: 0.8,
                location: MyGlobal.centerInfo[0]['lieu'],
                last: MyGlobal.centerInfo[0]['duree'] ~/ 24,
                price: MyGlobal.centerInfo[0]['prix'] + ' €',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Row(
                  children: [
                    Text(
                      'Nombre de places ${MyGlobal.centerInfo[0]['nbPlaces']}',
                      style: const TextStyle(fontSize: 12.0),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Icon(
                        Icons.calendar_month,
                        size: 28.0,
                      ),
                    ),
                    ElevatedButton(
                      style: style,
                      onPressed: () => participantsList(context),
                      child: const Text('Participants'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: const Color.fromRGBO(19, 69, 106, 1),
                                width: 4.0,
                              ),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Image.network(
                                "https://laplongeesousmarine.fr/images/moniteurs/${MyGlobal.centerMonitor[0]['image']}",
                                fit: BoxFit.cover,
                                width: 100.0,
                                height: 100.0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '${MyGlobal.centerMonitor[0]['bio']}',
                            style: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Moniteur: ${MyGlobal.centerMonitor[0]['nom']}',
                            style: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              StarRating(
                                  rating: MyGlobal.centerMonitor[0]['note']),
                              const SizedBox(width: 5),
                              const Text(
                                '(2)',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'Avis',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }
      }),
    );
  }
}

class StarRating extends StatelessWidget {
  final int rating;

  const StarRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) {
          if (index < rating) {
            return const Icon(
              Icons.star,
              size: 25.0,
              color: Colors.amber,
            );
          } else {
            return const Icon(
              Icons.star_border,
              size: 25.0,
            );
          }
        },
      ),
    );
  }
}
