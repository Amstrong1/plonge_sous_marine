import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:v1/widget/static_bottom_bar.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyCheckBox();
  }
}

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool messageChecked = false;
  bool plongeeChecked = false;
  bool centreChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: Column(
        children: <Widget>[
          _CustomListTile(
            title: "Message",
            trailing: CupertinoSwitch(
              value: messageChecked,
              onChanged: (value) {
                setState(() {
                  messageChecked = value;
                });
              },
            ),
          ),
          _CustomListTile(
            title: "Plongée",
            trailing: CupertinoSwitch(
              value: plongeeChecked,
              onChanged: (value) {
                setState(() {
                  plongeeChecked = value;
                });
              },
            ),
          ),
          _CustomListTile(
            title: "Centre de plongée",
            trailing: CupertinoSwitch(
              value: centreChecked,
              onChanged: (value) {
                setState(() {
                  centreChecked = value;
                });
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const StaticBottomBar(),
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final Widget? trailing;
  const _CustomListTile({Key? key, required this.title, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListTile(
          title: Text(title),
          trailing: trailing ?? const Icon(CupertinoIcons.forward, size: 18),
          onTap: () {},
        ),
      ),
    );
  }
}
