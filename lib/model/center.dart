class CenterD {
  final String nom;

  const CenterD({
    required this.nom,
  });

  factory CenterD.fromJson(Map<String, dynamic> json) {
    return CenterD(
      nom: json['nom'],
    );
  }
}
