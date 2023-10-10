import 'package:flutter/material.dart';
import 'package:v1/screen/diving.dart';
import 'package:v1/screen/center.dart';
import 'package:v1/screen/member.dart';
import 'package:v1/screen/msg_list.dart';
import 'package:v1/screen/other.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key, required this.page});

  final int page;

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    if (widget.page != 0) {
      _selectedIndex = widget.page;
    }
  }

  final List<Widget> _pages = [
    const DivingScreen(),
    const CenterScreen(),
    const MemberScreen(),
    const OtherScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void msgList(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return const MsgList();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          width: 60.0,
          height: 60.0,
          child: IconButton(
            icon: Image.asset(
              'assets/images/logo.png',
              width: 60.0,
              height: 60.0,
            ),
            onPressed: () {},
          ),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.mail),
                color: Colors.white,
                onPressed: () => msgList(context),
              ),
              Positioned(
                right: 2,
                top: 2,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red, // Badge color
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  child: const Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _pages[_selectedIndex],
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.scuba_diving_rounded,
            ),
            label: 'Plongée',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
            ),
            label: 'Centre',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group,
            ),
            label: 'Membre',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_horiz,
            ),
            label: 'Autre',
          ),
        ],
        currentIndex: _selectedIndex,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey[800],
        selectedItemColor: const Color.fromRGBO(19, 69, 106, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
