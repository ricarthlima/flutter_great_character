import '../models/character.dart';

Character getMyCharacter() {
  return Character(
    name: "Viper Forteaço",
    level: 6,
    hitPoints: 44,
    manaPoints: 6,
    isAlive: false,
    listAllies: ["Mithra", "Magnus Victor", "Nabis"],
    player: "Victor Hugo",
    createdAt: DateTime.parse("2024-03-02"),
    urlImage:
        "https://raw.githubusercontent.com/ricarthlima/flutter_great_character/refs/heads/main/.remote/viper-base.webp",
  );
}
