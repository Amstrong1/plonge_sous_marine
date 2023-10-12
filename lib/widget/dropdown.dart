import 'package:flutter/material.dart';

class AutocompleteDropDown extends StatefulWidget {
  const AutocompleteDropDown({Key? key}) : super(key: key);

  @override
  State<AutocompleteDropDown> createState() => _SimpleDropDownState();
}

class _SimpleDropDownState extends State<AutocompleteDropDown> {
  // String _selectedItem = ''; // Variable pour suivre l'élément sélectionné
  final _formKey = GlobalKey<FormState>(); // Clé pour le formulaire

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey, // Associe la clé au formulaire
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            width: 300,
            child: Column(
              children: [
                const SizedBox(height: 5), // Espace vertical de 20 points
                AutocompleteTextField(
                  items: _countries, // Liste des éléments de l'autocomplétion
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
                    if (_countries.contains(val)) {
                      return null; // Retourne null si la valeur est valide
                    } else {
                      return 'Localisation non trouvée'; // Retourne un message d'erreur si la valeur n'est pas valide
                    }
                  },
                  onItemSelect: (selected) {
                    setState(() {
                      // Met à jour le contenu de la page en fonction de l'élément sélectionné lorsqu'un élément est choisi
                    });
                  },
                ),
                const SizedBox(height: 5)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AutocompleteTextField extends StatefulWidget {
  final List<String> items;
  final Function(String) onItemSelect;
  final InputDecoration? decoration;
  final String? Function(String?)? validator;
  const AutocompleteTextField(
      {Key? key,
      required this.items,
      required this.onItemSelect,
      this.decoration,
      this.validator})
      : super(key: key);

  @override
  State<AutocompleteTextField> createState() => _AutocompleteTextFieldState();
}

class _AutocompleteTextFieldState extends State<AutocompleteTextField> {
  final FocusNode _focusNode = FocusNode();
  late OverlayEntry _overlayEntry;
  final LayerLink _layerLink = LayerLink();
  late List<String> _filteredItems;

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
      if (val == '') {
        _filteredItems = widget.items;
      } else {
        _filteredItems = widget.items
            .where(
                (element) => element.toLowerCase().contains(val.toLowerCase()))
            .toList();
      }
    });
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;

    return OverlayEntry(
      builder: (context) => Positioned(
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
                    title: Text(item),
                    onTap: () {
                      _controller.text = item;
                      _focusNode.unfocus();
                      widget.onItemSelect(item);
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// list of countries
final List<String> _countries = [
  "Hyères",
  "Banyuls-Cerbère",
  "Arcachon",
  "Étel",
  "Glénan",
  "Fréhel",
  "Amoco Cadiz",
  "Cherbourg"
];
