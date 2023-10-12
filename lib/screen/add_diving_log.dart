import 'package:flutter/material.dart';

class AddDivingLog extends StatefulWidget {
  const AddDivingLog({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _MyRowWidgetState createState() => _MyRowWidgetState();
}

class _MyRowWidgetState extends State<AddDivingLog> {
  String? selectedItem;
  List<String> items = ['Option 1', 'Option 2', 'Option 3'];
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 14),
      backgroundColor: const Color.fromRGBO(35, 87, 155, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.only(left: 30, right: 30, top: 8, bottom: 8),
    );

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Equipements'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 60,
                      height: 60,
                      margin: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          'assets/images/fish1.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 60,
                      height: 60,
                      margin: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: const Icon(Icons.add_circle),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 60,
                      height: 60,
                      margin: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: const Icon(Icons.add_circle),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 60,
                      height: 60,
                      margin: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: const Icon(Icons.add_circle),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.location_on),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(left: 8.0),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: DropdownButton<String>(
                              hint: const Text('Lieu de la plongée'),
                              value: selectedItem,
                              items: items.map((String item) {
                                return DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedItem = newValue;
                                });
                              },
                              isExpanded: true,
                              underline: Container(),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.explore,
                          size: 24.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          size: 24.0,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Date de la plongée',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.explore,
                          size: 24.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.anchor,
                          size: 24.0,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Profondeur',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.explore,
                          size: 24.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.device_thermostat,
                          size: 24.0,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Température',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.explore,
                          size: 24.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.call_to_action,
                          size: 24.0,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Paliers',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.explore,
                          size: 24.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 24.0,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Heure de début',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.explore,
                          size: 24.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 24.0,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Heure de fin',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.explore,
                          size: 24.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.av_timer,
                          size: 24.0,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Durée',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.explore,
                          size: 24.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.error_outline,
                          size: 24.0,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              maxLines: null,
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                hintText: 'Remarques',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.explore,
                          size: 24.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: style,
                      onPressed: () => {},
                      child: const Text('Valider'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
