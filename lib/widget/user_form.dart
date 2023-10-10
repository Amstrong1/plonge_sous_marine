import 'package:flutter/material.dart';

class UserForm extends StatelessWidget {
  UserForm({super.key});

  final style = ElevatedButton.styleFrom(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            child: SizedBox(
              height: 20,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Nom',
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: SizedBox(
              height: 20,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Prénom',
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: SizedBox(
              height: 20,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: SizedBox(
              height: 20,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Mot de passe',
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
              height: 20,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Niveau',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: style,
                  onPressed: () {},
                  child: const Text(
                    'Enregistrer',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
