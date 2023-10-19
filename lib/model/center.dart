
class CenterData {
  // final int id;
  final String lieu;
  // final String duree;
  // final String prix;
  // final String nbPlaces;
  // final String image;
  // final Monitor moniteur;

  CenterData({
    // required this.id,
    required this.lieu,
    // required this.duree,
    // required this.prix,
    // required this.nbPlaces,
    // required this.image,
    // required this.moniteur,
  });

  factory CenterData.fromJson(Map<String, dynamic> json) {
    return CenterData(
      // id: json['id'],
      lieu: json['lieu'],
      // duree: json['duree'],
      // prix: json['prix'],
      // nbPlaces: json['nb_places'],
      // image: json['image'],
      // moniteur: Monitor.fromJson(json['moniteur']),
    );
  }
}
