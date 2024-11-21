class Character {
  String name;
  int level;
  double hitPoints;
  double manaPoints;
  bool isAlive;
  List<String> listAllies;

  // About player
  String player;
  DateTime createdAt;

  // Meta information
  String? urlImage;

  Character({
    required this.name,
    required this.level,
    required this.hitPoints,
    required this.manaPoints,
    required this.isAlive,
    required this.listAllies,
    required this.player,
    required this.createdAt,
    this.urlImage,
  });
}
