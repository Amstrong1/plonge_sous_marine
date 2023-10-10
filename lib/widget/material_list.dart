import 'package:flutter/material.dart';
import 'package:v1/model/diving_materials.dart';
import 'package:v1/setter/dummy_data.dart';

class DivingMaterialList extends StatelessWidget {
  const DivingMaterialList({super.key});
  @override
  Widget build(BuildContext context) {
    return const MyAccordion();
  }
}

class MyAccordion extends StatefulWidget {
  const MyAccordion({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAccordionState createState() => _MyAccordionState();
}

class _MyAccordionState extends State<MyAccordion> {
  @override
  Widget build(BuildContext context) {
    final style = ElevatedButton.styleFrom(
      backgroundColor: const Color.fromRGBO(19, 69, 106, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.only(left: 20, right: 20),
    );

    List<String> descriptions = [];
    for (MaterialList model in divingMaterialList) {
      descriptions.add(model.description);
    }

    List<Item> items = descriptions
        .map((description) => Item(expandedValue: description))
        .toList();

    return ListView.builder(
      itemCount: divingMaterialList.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 80.0,
                    height: 80.0,
                    child: Image.asset(
                      divingMaterialList[index].imageAsset,
                      fit: BoxFit.cover,
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              style: style,
                              onPressed: () {},
                              child: const Text(
                                'Acheter',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 20, right: 20),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                divingMaterialList[index].price,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              divingMaterialList[index].name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ExpansionPanelList(
                elevation: 1,
                expandedHeaderPadding: const EdgeInsets.all(10),
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    items[index].isExpanded = !isExpanded;
                  });
                },
                children: [
                  ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return const ListTile(
                        title: Text('Description'),
                      );
                    },
                    body: ListTile(
                      title: Text(items[index].expandedValue),
                    ),
                    isExpanded: items[index].isExpanded,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class Item {
  Item({
    required this.expandedValue,
    this.isExpanded = true,
  });

  String expandedValue;
  bool isExpanded;
}
