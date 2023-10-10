import 'package:flutter/material.dart';
import 'package:v1/widget/dropdown.dart';
import 'package:v1/screen/map.dart';
import 'package:v1/screen/center_map.dart';

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
                                width: 100.0, // Largeur du cadre
                                height: 100.0, // Hauteur du cadre
                                decoration: BoxDecoration(
                                  shape: BoxShape
                                      .rectangle, // Définit la forme du cadre comme un rectangle
                                  border: Border.all(
                                    color: const Color.fromRGBO(19, 69, 106,
                                        1), // Couleur de la bordure du cadre
                                    width: 4.0, // Largeur de la bordure
                                  ),
                                  borderRadius: BorderRadius.circular(16.0),
                                  // Vous pouvez également définir une couleur de fond ici si nécessaire
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      12.0), // Coins arrondis pour l'image
                                  child: Image.asset(
                                    'assets/images/plonge.jpg',
                                    fit: BoxFit
                                        .cover, // Ajuste l'image pour remplir le cadre
                                    width: 100.0, // Largeur de l'image
                                    height: 100.0, // Hauteur de l'image
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 30),
                          const Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.info),
                                  SizedBox(width: 10),
                                  Text(
                                    'Nom du centre',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Icon(Icons.map),
                                  SizedBox(width: 10),
                                  Text(
                                    'Lieu du centre',
                                    style: TextStyle(
                                      fontSize: 18.0,
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
                      const Row(
                        children: [
                          Icon(
                            Icons.facebook,
                            size: 35,
                          ),
                          Icon(
                            Icons.facebook,
                            size: 35,
                          ),
                          Icon(
                            Icons.facebook,
                            size: 35,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Titre du texte',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
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
                                  SizedBox(height: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Responsable du centre :'),
                                      SizedBox(height: 10),
                                      Text('Bettyna DUTSINDE'),
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
                                        onPressed: () {},
                                        child: const Text('Appeler'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 150,
                                      child: ElevatedButton(
                                        style: style,
                                        onPressed: () {},
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
}
