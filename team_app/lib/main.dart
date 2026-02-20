// main.dart
import 'package:flutter/material.dart';

// The main entry point of the app
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // TASK 1: Change the title of the app
      // This title is mainly used by the OS/task switcher (it’s not the AppBar text).
      title: 'My Amazing App',
      theme: ThemeData(
        // TASK 2: Change the primary swatch color (try Colors.red, Colors.green)
        // This sets the default color theme used by widgets like the AppBar.
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TASK 3: Change the text in the top bar
        // This is the title the user actually sees at the top of the screen.
        title: Text('Flutter is Fun!'),
      ),
      body: Center(
        // The main content is centered so it looks good on different screen sizes.
        child: Card(
          elevation: 4,
          margin: EdgeInsets.all(16),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Icon(Icons.person, size: 50, color: Colors.blue),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // Replace this with your real name for the assignment.
                      'Student Name',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      // This is a short subtitle line under the name.
                      'Major: Computer Science',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      // If you need more UI later (buttons, extra text, etc.), add it inside `body`.
    );
  }
}
