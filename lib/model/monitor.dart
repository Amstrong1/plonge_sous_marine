class Monitor {
  final int id;
  final String nom;
  final String image;
  final String bio;
  final String note;

  const Monitor({
    required this.id,
    required this.nom,
    required this.image,
    required this.bio,
    required this.note,
  });

  factory Monitor.fromJson(Map<String, dynamic> json) {
    return Monitor(
      id: json['id'],
      nom: json['nom'],
      image: json['image'],
      bio: json['bio'],
      note: json['note'],
    );
  }
}
