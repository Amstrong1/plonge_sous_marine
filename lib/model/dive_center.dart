class DiveCenter {
  final int id;
  final String nom;
  final String lieu;
  final String statut;
  final String responsable;
  final String contact;
  final String email;
  final String description;
  final String titre;
  final String facebook;
  final String twitter;
  final String instagram;
  // ignore: non_constant_identifier_names
  final String created_at;
  // ignore: non_constant_identifier_names
  final String updated_at;

  const DiveCenter({
    required this.id,
    required this.nom,
    required this.lieu,
    required this.statut,
    required this.responsable,
    required this.contact,
    required this.email,
    required this.description,
    required this.titre,
    required this.facebook,
    required this.twitter,
    required this.instagram,
    // ignore: non_constant_identifier_names
    required this.created_at,
    // ignore: non_constant_identifier_names
    required this.updated_at,
  });

  factory DiveCenter.fromJson(Map<String, dynamic> json) {
    return DiveCenter(
      id: json['id'],
      nom: json['nom'],
      lieu: json['lieu'],
      statut: json['statut'],
      responsable: json['responsable'],
      contact: json['contact'],
      email: json['email'],
      description: json['description'],
      titre: json['titre'],
      facebook: json['facebook'],
      twitter: json['twitter'],
      instagram: json['instagram'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
