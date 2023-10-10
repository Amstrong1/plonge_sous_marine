import 'package:flutter/material.dart';
import 'package:v1/widget/static_bottom_bar.dart';

class MsgList extends StatelessWidget {
  const MsgList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Liste des messages'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          'assets/images/plonge.jpg',
                          fit: BoxFit.cover,
                          width: 100.0,
                          height: 100.0,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const SizedBox(
                      width: 200,
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Equipe de plongée sous marine',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(height: 50),
                          SizedBox(
                            width: 30,
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          'assets/images/plonge.jpg',
                          fit: BoxFit.cover,
                          width: 100.0,
                          height: 100.0,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const SizedBox(
                      width: 200,
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Equipe de plongée sous marine',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.block,
                            color: Colors.red,
                            size: 30,
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            width: 30,
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          'assets/images/plonge.jpg',
                          fit: BoxFit.cover,
                          width: 100.0,
                          height: 100.0,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const SizedBox(
                      width: 200,
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Equipe de plongée sous marine',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(height: 50),
                          SizedBox(
                            width: 30,
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const StaticBottomBar(),
    );
  }
}
