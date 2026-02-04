// main.dart
import 'package:flutter/material.dart';

// The main entry point of the app
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Amazing App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  //modified to a stateful widget as it is needed for the bottom navigation bar
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // made to handle the tab bar index
  int _currentIndex = 0;

  //the indexes of the pages, TextTab is a placeholder widget
  final List<Widget> _pages = const [
    IconsTab(),
    TextTab(title: "1"),
    TextTab(title: "2"),
    TextTab(title: "3"),
  ];

  @override
  //this build is for items that remain constant across tabs
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TASK 3: Change the text in the top bar
        title: Text('Flutter is Fun!'),
      ),

      //body changes based on the selected tab
      body: _pages[_currentIndex],

      //bottom navigation bar to switch between tabs
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Icons',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'One',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Two',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Three',
          ),
        ],
      ),
    );
  }
}


class IconsTab extends StatelessWidget {
  const IconsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const <Widget>[
          Icon(
            Icons.favorite,
            color: Colors.pink,
            size: 30.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          Icon(
            Icons.audiotrack,
            color: Colors.green,
            size: 30.0,
          ),
          Icon(
            Icons.beach_access,
            color: Colors.blue,
            size: 30.0,
          ),
          Icon(
            Icons.calculate,
            color: Colors.black,
            size: 30.0,
          ),
          Icon(
            Icons.health_and_safety,
            color: Colors.red,
            size: 30.0,
          ),
          Icon(
            Icons.alarm,
            color: Colors.orange,
            size: 30.0,
          ),
        ],
      ),
    );
  }
}

class TextTab extends StatelessWidget {
  final String title;

  const TextTab({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}