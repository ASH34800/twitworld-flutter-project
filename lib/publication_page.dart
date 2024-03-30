import 'package:flutter/material.dart';
import 'package:twitworld/home_page.dart';

class PubPage extends StatefulWidget {
  const PubPage({Key? key}) : super(key: key);

  @override
  State<PubPage> createState() => _PubPageState();
}

class _PubPageState extends State<PubPage> {
  int _selectedIndex = 1;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Publications',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: const Center(
          child: Text('Liste des nouvelles publications',
            style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontFamily: 'Poppins',
          ),
            textAlign: TextAlign.center,
      ),
        ),// Placeholder for PubPage content

      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(color: Colors.white),
        selectedItemColor: Colors.white,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        backgroundColor: Colors.blueGrey,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Publications',
          )
        ],
      ),
      backgroundColor: Colors.blueGrey[900]!,
    );
  }
}
