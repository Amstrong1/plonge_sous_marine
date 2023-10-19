import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:v1/helpers/global.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class AutocompleteDropDown extends StatefulWidget {
  const AutocompleteDropDown({Key? key}) : super(key: key);

  @override
  State<AutocompleteDropDown> createState() => _SimpleDropDownState();
}

class _SimpleDropDownState extends State<AutocompleteDropDown> {
  final _formKey = GlobalKey<FormState>();
  final List<Map<String, dynamic>> _dropdownItems = [];

  @override
  void initState() {
    super.initState();
    _fetchDropdownItems();
    _fetchFirstCenterDiving();
  }

  Future<void> _fetchFirstCenterDiving() async {
    try {
      final response2 = await http.get(
          Uri.parse('https://laplongeesousmarine.fr/api/get_plonge_first'));
      if (response2.statusCode == 200) {
        final jsonData = json.decode(response2.body);

        MyGlobal.centerInfo = [
          {
            'id': jsonData['id'],
            'lieu': jsonData['lieu'],
            'duree': jsonData['duree'],
            'prix': jsonData['prix'],
            'nbPlaces': jsonData['nb_places'],
            'image': jsonData['image'],
          },
        ];

        MyGlobal.centerMonitor = [
          {
            'id': jsonData['moniteur']['id'],
            'nom': jsonData['moniteur']['nom'],
            'image': jsonData['moniteur']['image'],
            'bio': jsonData['moniteur']['bio'],
            'note': jsonData['moniteur']['note'],
          },
        ];

        if (kDebugMode) {
          print(MyGlobal.centerInfo[0]['image']);
        }
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> _fetchDropdownItems() async {
    try {
      final response = await http
          .get(Uri.parse('https://laplongeesousmarine.fr/api/get_centres'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data is List<dynamic>) {
          for (var i = 0; i < data.length; i++) {
            _dropdownItems.add({
              'id': data[i]['id'],
              'name': data[i]['nom'],
            });
          }
        }
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            width: 300,
            child: Column(
              children: [
                const SizedBox(height: 5),
                AutocompleteTextField(
                  items: _dropdownItems,
                  decoration: InputDecoration(
                    labelText: 'Localisation',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  validator: (val) {
                    if (_dropdownItems.any((item) => item['name'] == val)) {
                      return null;
                    } else {
                      return 'Localisation non trouvée';
                    }
                  },
                  onItemSelect: (selected) {
                    _fetchCenterData(selected['id']);
                  },
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _fetchCenterData(int selectedId) async {
    try {
      final response2 = await http.get(Uri.parse(
          'https://laplongeesousmarine.fr/api/get_plonges_centre/$selectedId'));
      if (response2.statusCode == 200) {
        final jsonData = json.decode(response2.body);
        // CenterData centerData = CenterData.fromJson(jsonData);

        MyGlobal.centerInfo = [
          {
            'id': jsonData['id'],
            'lieu': jsonData['lieu'],
            'duree': jsonData['duree'],
            'prix': jsonData['prix'],
            'nbPlaces': jsonData['nb_places'],
            'image': jsonData['image'],
          },
        ];

        MyGlobal.centerMonitor = [
          {
            'id': jsonData['moniteur']['id'],
            'nom': jsonData['moniteur']['nom'],
            'image': jsonData['moniteur']['image'],
            'bio': jsonData['moniteur']['bio'],
            'note': jsonData['moniteur']['note'],
          },
        ];
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}

class AutocompleteTextField extends StatefulWidget {
  final List<Map<String, dynamic>> items;
  final Function(Map<String, dynamic>) onItemSelect;
  final InputDecoration? decoration;
  final String? Function(String?)? validator;
  const AutocompleteTextField({
    Key? key,
    required this.items,
    required this.onItemSelect,
    this.decoration,
    this.validator,
  }) : super(key: key);

  @override
  State<AutocompleteTextField> createState() => _AutocompleteTextFieldState();
}

class _AutocompleteTextFieldState extends State<AutocompleteTextField> {
  final FocusNode _focusNode = FocusNode();
  late OverlayEntry _overlayEntry;
  final LayerLink _layerLink = LayerLink();
  late List<Map<String, dynamic>> _filteredItems;

  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredItems = widget.items;
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _overlayEntry = _createOverlayEntry();
        Overlay.of(context).insert(_overlayEntry);
      } else {
        _overlayEntry.remove();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: TextFormField(
        controller: _controller,
        focusNode: _focusNode,
        onChanged: _onFieldChange,
        decoration: widget.decoration,
        validator: widget.validator,
      ),
    );
  }

  void _onFieldChange(String val) {
    setState(() {
      if (val.isEmpty) {
        _filteredItems = widget.items;
      } else {
        _filteredItems = widget.items.where((item) {
          return item['name'].toLowerCase().contains(val.toLowerCase());
        }).toList();
      }
    });
  }

  OverlayEntry _createOverlayEntry() {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final Size size = renderBox.size;

    return OverlayEntry(
      builder: (context) {
        return Positioned(
          width: size.width,
          child: CompositedTransformFollower(
            link: _layerLink,
            showWhenUnlinked: false,
            offset: Offset(0.0, size.height + 5.0),
            child: Material(
              elevation: 4.0,
              child: Container(
                constraints: const BoxConstraints(maxHeight: 200),
                child: ListView.builder(
                  itemCount: _filteredItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = _filteredItems[index];
                    return ListTile(
                      title: Text(item['name']),
                      onTap: () {
                        _controller.text = item['name'];
                        _focusNode.unfocus();
                        widget.onItemSelect(item);
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
