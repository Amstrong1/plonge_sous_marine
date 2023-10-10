class Folder {
  final String id;
  final String name;
  final List<String> images;

  Folder({
    required this.id,
    required this.name,
    this.images = const [], // Par défaut, le dossier est vide.
  });

  // Méthode pour ajouter une image au dossier.
  void addImage(String imageUrl) {
    images.add(imageUrl);
  }

  // Méthode pour supprimer une image du dossier.
  void removeImage(String imageUrl) {
    images.remove(imageUrl);
  }
}
