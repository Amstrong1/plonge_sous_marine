import 'package:flutter/material.dart';
import 'package:v1/widget/dropdown.dart';
import 'package:v1/helpers/global.dart';
import 'package:v1/widget/full_width_image.dart';
import 'package:v1/screen/participant_list.dart';

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
                        child: Image.asset(
                          'assets/images/plonge.jpg',
                          fit: BoxFit.cover,
                          width: 100.0,
                          height: 100.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Biographie',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 15),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Moniteur: Patrice Morice',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 25.0,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          size: 25.0,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          size: 25.0,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          size: 25.0,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star_border,
                          size: 25.0,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '(2)',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
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
}
