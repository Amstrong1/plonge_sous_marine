import 'package:flutter/material.dart';
import 'package:v1/setter/dummy_data.dart';
import 'package:v1/screen/chat.dart';

class MaterielExploration extends StatelessWidget {
  const MaterielExploration({super.key});

  @override
  Widget build(BuildContext context) {
    void chat(BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) {
            return const Chat();
          },
        ),
      );
    }

    return ListView.builder(
      itemCount: dummyExplorationMaterial.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Container(
                width: 90.0,
                height: 90.0,
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
                    dummyExplorationMaterial[index].imageAsset,
                    fit: BoxFit.cover,
                    width: 100.0,
                    height: 100.0,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dummyExplorationMaterial[index].member,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    dummyExplorationMaterial[index].name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    dummyExplorationMaterial[index].price,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () => chat(context),
                      icon: const Icon(
                        Icons.mail,
                        color: Color.fromRGBO(198, 240, 254, 1),
                        size: 32,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
