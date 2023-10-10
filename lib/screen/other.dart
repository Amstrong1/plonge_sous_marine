import 'package:flutter/material.dart';
import 'package:v1/screen/profile.dart';
import 'package:v1/screen/diving_log.dart';
import 'package:v1/screen/materials.dart';
import 'package:v1/screen/notifications.dart';
import 'package:v1/screen/subscription.dart';

class OtherScreen extends StatelessWidget {
  const OtherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void profil(BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) {
            return const Profile();
          },
        ),
      );
    }

    void divingLog(BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) {
            return const DivingLog();
          },
        ),
      );
    }

    void materials(BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) {
            return const Materials();
          },
        ),
      );
    }

    void notifications(BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) {
            return const Notifications();
          },
        ),
      );
    }

    void subscription(BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) {
            return const Subscription();
          },
        ),
      );
    }

    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 14),
      backgroundColor: Colors.white,
      padding: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
    );

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text('Site Internet'),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: style,
                  onPressed: () => profil(context),
                  child: const Row(
                    children: [
                      Text(
                        'Mon Profil',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: style,
                  onPressed: () => divingLog(context),
                  child: const Row(
                    children: [
                      Text(
                        'Carnet de Plongée',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: style,
                  onPressed: () => materials(context),
                  child: const Row(
                    children: [
                      Text(
                        'Equipements',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: style,
                  onPressed: () => notifications(context),
                  child: const Row(
                    children: [
                      Text(
                        'Notifications',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: style,
                  onPressed: () => subscription(context),
                  child: const Row(
                    children: [
                      Text(
                        'Abonnements',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Mentions Légales'),
            ],
          ),
        ),
      ],
    );
  }
}
