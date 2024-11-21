import 'package:flutter/material.dart';
import 'package:flutter_great_character/data/my_character.dart';
import 'package:flutter_great_character/data/url_constants.dart';
import 'package:flutter_great_character/models/character.dart';
import 'package:flutter_great_character/widgets/list_item.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Character character = getMyCharacter();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Meu Grande Personagem",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange[900],
        shadowColor: Colors.black,
        elevation: 7,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.network(
                (character.urlImage != null)
                    ? character.urlImage!
                    : UrlConstants.hero,
                width: 300,
              ),
            ),
            Text(
              character.name,
              style: GoogleFonts.seaweedScript(
                fontSize: 64,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Por ${character.player}, criado em ${character.createdAt.toString().substring(0, 10)}.",
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Divider(),
            ),
            ListItem(title: "Nível:", value: character.level.toString()),
            ListItem(
              title: "Vida:",
              value: "${character.hitPoints}/${character.level * 10}",
            ),
            ListItem(
              title: "Mana:",
              value: "${character.manaPoints}/${character.level * 2}",
            ),
            ListItem(
              title: "Status:",
              value: (character.isAlive) ? "🩷" : "💀",
            ),
          ],
        ),
      ),
    );
  }
}
