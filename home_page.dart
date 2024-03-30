import 'package:flutter/material.dart';
import 'package:twitworld/publication_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TwitWorld",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey[900]!,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Bienvenue sur TwitWorld",
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontFamily: 'Poppins',
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              "Le réseau social en test",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PubPage()),
                );
              },
              child: const Text('Voir les publications'),
            ),
          ],
        ),
      ),
    );
  }
}
