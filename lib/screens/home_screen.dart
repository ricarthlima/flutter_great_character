import 'package:flutter/material.dart';
import 'package:flutter_great_character/data/my_character.dart';
import 'package:flutter_great_character/data/url_constants.dart';
import 'package:flutter_great_character/models/character.dart';
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
      body: Column(
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
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
