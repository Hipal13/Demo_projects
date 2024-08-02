import 'package:flutter/material.dart';

// Consider renaming the class to something more descriptive, like "ProfileCard"
class CardDemo extends StatefulWidget {
  const CardDemo({super.key});

  @override
  State<CardDemo> createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  // Store the image URL as a constant for better readability and maintainability
  static const String _imageUrl =
      "https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GeeksforGeeks'),
        backgroundColor: Colors.greenAccent[400],
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 30,
          shadowColor: Colors.black,
          color: Colors.greenAccent[100],
          child: SizedBox(
            width: 300,
            height: 600,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green[500],
                    radius: 108,
                    child: CircleAvatar(
                      backgroundImage: const NetworkImage(_imageUrl),
                      radius: 100,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'GeeksforGeeks',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.green[900],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'GeeksforGeeks is a computer science portal for geeks at geeksforgeeks.org. It contains well written, well thought and well explained computer science and programming articles, quizzes, projects, interview experiences and much more!!',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.green,
                    ),
                    textAlign: TextAlign.center, // Center align the text for better readability
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.green),
                      ),
                      child: const Padding(
                        padding:  EdgeInsets.all(2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center, // Center the icon and text
                          children: [
                            Icon(Icons.touch_app),
                            SizedBox(width: 5), // Add some spacing between icon and text
                            Text('Visit'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}