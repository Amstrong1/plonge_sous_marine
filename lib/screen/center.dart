import 'package:flutter/material.dart';
import 'package:v1/widget/dropdown.dart';
import 'package:v1/screen/map.dart';
import 'package:v1/screen/center_map.dart';
import 'package:v1/helpers/global.dart';
import 'package:url_launcher/url_launcher.dart';

class CenterScreen extends StatelessWidget {
  const CenterScreen({super.key});

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

    void mapGlobal(BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) {
            return const MapScreen();
          },
        ),
      );
    }

    void centerMap(BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) {
            return const CenterMap();
          },
        ),
      );
    }

    return Container(
      color: Colors.grey[100],
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AutocompleteDropDown(),
              CircleAvatar(
                backgroundColor: const Color.fromRGBO(19, 69, 106, 1),
                child: IconButton(
                  iconSize: 25,
                  icon: const Icon(Icons.map),
                  onPressed: () => mapGlobal(context),
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white, // Couleur de fond du Container
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 100.0,
                                height: 100.0,
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
                            ],
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.info),
                                  const SizedBox(width: 10),
                                  Text(
                                    '${MyGlobal.centerDive[0]['nom']}',
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Row(
                                children: [
                                  const Icon(Icons.map),
                                  const SizedBox(width: 10),
                                  Text(
                                    '${MyGlobal.centerDive[0]['lieu']}',
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              'https://www.instagram.com/${MyGlobal.centerDive[0]['facebook']}';
                            },
                            child: Image.asset(
                              'assets/images/facebook.png',
                              height: 30,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              'https://www.instagram.com/${MyGlobal.centerDive[0]['instagram']}';
                            },
                            child: Image.asset(
                              'assets/images/instagram.png',
                              height: 30,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              'https://www.instagram.com/${MyGlobal.centerDive[0]['twitter']}';
                            },
                            child: Image.asset(
                              'assets/images/twitter.png',
                              height: 30,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${MyGlobal.centerDive[0]['titre']}',
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text('${MyGlobal.centerDive[0]['description']}'),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      DecoratedBox(
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.amber, // Couleur de fond
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                                top: 10,
                                                bottom: 10),
                                            child: Text(
                                              'Nouveau',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors
                                                    .white, // Couleur du texte
                                              ),
                                            ),
                                          )),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('Responsable du centre :'),
                                      const SizedBox(height: 10),
                                      Text(
                                          '${MyGlobal.centerDive[0]['responsable']}'),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      width: 150,
                                      child: ElevatedButton(
                                        style: style,
                                        onPressed: () {},
                                        child: const Text('Tarif'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 150,
                                      child: ElevatedButton(
                                        style: style,
                                        onPressed: () {
                                          _launchPhoneCall(MyGlobal
                                              .centerDive[0]['contact']);
                                        },
                                        child: const Text('Appeler'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 150,
                                      child: ElevatedButton(
                                        style: style,
                                        onPressed: () {
                                          _launchEmail(
                                              MyGlobal.centerDive[0]['email']);
                                        },
                                        child: const Text('Envoyer un mail'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 15.0, // Alignement en haut
                right: 30.0, // Alignement à droite
                child: IconButton(
                  onPressed: () => centerMap(context),
                  icon: const Icon(Icons.map),
                  iconSize: 25,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _launchPhoneCall(String phoneNumber) async {
    final phoneUrl = Uri.parse('tel:$phoneNumber');
    if (await canLaunchUrl(phoneUrl)) {
      await launchUrl(phoneUrl);
    } else {
      throw 'Impossible de lancer l\'appel téléphonique';
    }
  }

  _launchEmail(String emailAddress) async {
    final emailUrl = Uri.parse('mailto:$emailAddress');
    if (await canLaunchUrl(emailUrl)) {
      await launchUrl(emailUrl);
    } else {
      throw 'Impossible d\'ouvrir l\'application de messagerie';
    }
  }
}
