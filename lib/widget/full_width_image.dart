import 'package:flutter/material.dart';
import 'package:v1/screen/diving_info.dart';

class FullWidthImageWithText extends StatelessWidget {
  final String imageAssetName;
  final String location;
  final String last;
  final String price;
  final String moreBtn;
  final String addBtn;
  final double opacity;

  const FullWidthImageWithText(
      {super.key,
      required this.imageAssetName,
      required this.location,
      required this.last,
      required this.price,
      this.moreBtn = 'En savoir plus',
      this.addBtn = 'Commander',
      this.opacity = 1.0});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 14),
      backgroundColor: const Color.fromRGBO(19, 69, 106, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.only(left: 25, right: 25, top: 8, bottom: 8),
    );

    void divingInfo(BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) {
            return const DivingInfoScreen();
          },
        ),
      );
    }

    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Opacity(
            opacity: opacity, // Opacité de l'image
            child: Image.asset(
              'assets/images/$imageAssetName',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 0.0,
          bottom: 60.0,
          child: Container(
            padding: const EdgeInsets.only(
                left: 12.0, right: 12.0, top: 8.0, bottom: 8.0),
            color: Colors.amber,
            child: const Text(
              'luxe',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          width: double.infinity,
          height: 300,
          padding: const EdgeInsets.only(right: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                location,
                style: const TextStyle(
                  color: Colors.black, // Couleur du texte
                  fontSize: 20.0, // Taille du texte
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                last,
                style: const TextStyle(
                  color: Colors.black, // Couleur du texte
                  fontSize: 20.0, // Taille du texte
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                price,
                style: const TextStyle(
                  color: Colors.black, // Couleur du texte
                  fontSize: 25.0, // Taille du texte
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              ElevatedButton(
                style: style,
                onPressed: () => divingInfo(context),
                child: Text(moreBtn),
              ),
              ElevatedButton(
                style: style,
                onPressed: () {},
                child: Text(addBtn),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
