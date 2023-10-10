import 'package:flutter/material.dart';
import 'package:v1/widget/grid_view_folder.dart';
import 'package:v1/widget/static_bottom_bar.dart';
import 'package:v1/widget/user_form.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: Column(
        children: [
          UserForm(),
          const Expanded(
            child: GridViewFolder(),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: MyButton(),
          ),
        ],
      ),
      bottomNavigationBar: const StaticBottomBar(),
    );
  }
}

class MyButton extends StatelessWidget {
  MyButton({super.key});

  final style = ElevatedButton.styleFrom(
    backgroundColor: const Color.fromRGBO(19, 69, 106, 1),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
  );

  final style2 = ElevatedButton.styleFrom(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              style: style,
              onPressed: () {},
              child: const Text('Ajouter un nouveau dossier'),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              style: style2,
              onPressed: () {},
              child: const Text(
                'Se déconnecter',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
