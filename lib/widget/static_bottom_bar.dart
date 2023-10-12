import 'package:flutter/material.dart';

class StaticBottomBar extends StatefulWidget {
  const StaticBottomBar({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<StaticBottomBar> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      textStyle: const TextStyle(fontSize: 14),
    );

    return Container(
      height: 60,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
            child: TextButton(
              style: style,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.scuba_diving_rounded,
                    color: Colors.grey[800],
                  ),
                  Text(
                    'Plongée',
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/diving');
              },
            ),
          ),
          Expanded(
            child: TextButton(
              style: style,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.grey[800],
                  ),
                  Text(
                    'Centre',
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/center');
              },
            ),
          ),
          Expanded(
            child: TextButton(
              style: style,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.group,
                    color: Colors.grey[800],
                  ),
                  Text(
                    'Membre',
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/member');
              },
            ),
          ),
          Expanded(
            child: TextButton(
              style: style,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.more_horiz,
                    color: Colors.grey[800],
                  ),
                  Text(
                    'Autre',
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/other');
              },
            ),
          ),
        ],
      ),
    );
  }
}
