import 'package:flutter/material.dart';
import 'package:v1/widget/static_bottom_bar.dart';

class Subscription extends StatelessWidget {
  const Subscription({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 12),
      backgroundColor: const Color.fromRGBO(70, 145, 16, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Abonnements'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                child: Text(
                  'Vous souhaitez communiquer avec d\'autres plongeurs pour planifier des explorations ou vendre votre matériel d\'occasion ?',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                child: Text(
                  'Nous vous donnons la possibilité de communiquer avec d\'autres membres',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          color: const Color.fromRGBO(19, 69, 106, 1),
                          padding: const EdgeInsets.all(5),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '6 mois',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.all(5),
                          color: Colors.white,
                          child: Column(
                            children: [
                              const Text(
                                '7.90 €',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                style: style,
                                onPressed: () {},
                                child: const Text(
                                  'Commander',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.chat,
                                    size: 20,
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: 80,
                                    child: Text(
                                      'Conversation: 50 messages',
                                      style: TextStyle(fontSize: 10),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.scuba_diving,
                                    size: 20,
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: 90,
                                    child: Text(
                                      'Lorsque une plongée privée a été éffectuée : 1 séjour ou plus de minimun 1 semaine',
                                      style: TextStyle(fontSize: 10),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          color: const Color.fromRGBO(19, 69, 106, 1),
                          padding: const EdgeInsets.all(5),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '1 an',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.all(5),
                          color: Colors.white,
                          child: Column(
                            children: [
                              const Text(
                                '23.90 €',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                style: style,
                                onPressed: () {},
                                child: const Text(
                                  'Commander',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.chat,
                                    size: 20,
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: 90,
                                    child: Text(
                                      'Conversation: 50 messages',
                                      style: TextStyle(fontSize: 10),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const StaticBottomBar(),
    );
  }
}
