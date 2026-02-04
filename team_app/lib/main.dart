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
      // TASK 1: Change the title of the app
      title: 'My Amazing App',
      theme: ThemeData(
        // TASK 2: Change the primary swatch color (try Colors.red, Colors.green)
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    IconsTab(),
    TextTab(title: "1"),
    TextTab(title: "2"),
    TextTab(title: "3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TASK 3: Change the text in the top bar
        title: Text('Flutter is Fun!'),
      ),

      body: _pages[_currentIndex],
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
      /*
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
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
          ],
        ),
      ),
      */
    );
  }
}
