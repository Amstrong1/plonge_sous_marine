import 'package:flutter/material.dart';
import 'package:v1/widget/member_exploration_list_view.dart';
import 'package:v1/widget/materiel_exploration_list_view.dart';

class TwoTab extends StatelessWidget {
  const TwoTab({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      backgroundColor: const Color.fromRGBO(198, 240, 254, 1),
      shape: const CircleBorder(),
    );

    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(74, 74, 74, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(38),
                topRight: Radius.circular(38),
              ),
            ),
            child: TabBar(
              tabs: const [
                Tab(text: 'Planifier une exploration'),
                Tab(text: 'Vente de matériel'),
              ],
              indicator: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(38),
                  topRight: Radius.circular(38),
                ),
              ),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                // Contenu de l'onglet 1
                Column(
                  children: [
                    // Row de trois colonnes
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(38),
                          bottomRight: Radius.circular(38),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Container(
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
                          ),
                          const Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 24,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Ajouter un nom',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 24,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Ajouter un lieu',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 24,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Ajouter une date',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            child: ElevatedButton(
                              style: style,
                              onPressed: () {},
                              child: const Text(
                                'Ok',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),
                    // ListView
                    Expanded(
                      child: Container(
                        color: Colors.grey[100],
                        child: const MemberExploration(),
                      ),
                    ),
                  ],
                ),

                // Contenu de l'onglet 2
                Column(
                  children: [
                    // Row de trois colonnes
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(38),
                          bottomRight: Radius.circular(38),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Container(
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
                          ),
                          const Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 24,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Ajouter un nom',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 24,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Ajouter un matériel',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 24,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Prix du matériel',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            child: ElevatedButton(
                              style: style,
                              onPressed: () {},
                              child: const Text(
                                'Ok',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),
                    // ListView
                    Expanded(
                      child: Container(
                        color: Colors.grey[100],
                        child: const MaterielExploration(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
