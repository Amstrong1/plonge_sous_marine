import 'package:flutter/material.dart';
import 'package:v1/widget/static_bottom_bar.dart';

class Person {
  final String name;

  Person(this.name);
}

class Participant extends StatelessWidget {
  final List<Person> persons = [
    Person('John Doe'),
    Person('Jane Smith'),
    Person('Bob Johnson'),
    Person('Alice Brown'),
  ];

  Participant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Liste de Personnes'),
      ),
      body: ListView.builder(
        itemCount: persons.length,
        itemBuilder: (context, index) {
          final id = index + 1; // Calcule l'ID à partir de l'index
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  '$id' ' - ',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ), // Icône à gauche
              title: Text(persons[index].name), // Nom de la personne
              trailing: const Icon(Icons.mail), // Icône à droite
            ),
          );
        },
      ),
      bottomNavigationBar: const StaticBottomBar(),
    );
  }
}
