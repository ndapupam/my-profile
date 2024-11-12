import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nada's profile",
      home: MyProfilePage(),
    );
  }
}

class HobbyText extends StatelessWidget {
  final String text;

  const HobbyText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.pink.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class MyProfilePage extends StatelessWidget {
  Widget _buildButtonColumn(IconData icon, Color backgroundColor, Color iconColor) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // Shadow color
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 4), // Position of the shadow
            ),
          ],
        ),
        child: CircleAvatar(
          backgroundColor: backgroundColor,
          radius: 30,
          child: Icon(icon, color: iconColor),
        ),
      ),
    ],
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: Image.asset('assets/nadacantik.jpeg', fit: BoxFit.cover),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildButtonColumn(Icons.clear, Colors.white, Colors.pink),
                    _buildButtonColumn(Icons.favorite, Colors.pink, Colors.white),
                    _buildButtonColumn(Icons.star, Colors.white, Colors.purple),
                  ],
                ),
                const SizedBox(height: 16),
                Column(
                  children: [
                    Text(
                      'Nada, 20',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Information Systems Student',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Column(
                  children: [
                    Text(
                      'About Me',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Column(
                  children: [
                    Text(
                      'Nada Putri, an Info Systems student (SID: 5026221060), is deep into fashion, rocking finance while vibing with Korean language and culture',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Column(
                  children: [
                    Text(
                      'Fun Fact',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Column(
  children: [
    RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Standing Sleeper - ",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          TextSpan(
            text: "Yup, I can nap while standing! Call it a superpower or a quirky talent - I'm basically a human flamingo.",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black),
          ),
        ],
      ),
    ),
  ],
),

                const SizedBox(height: 16),
                Column(
                  children: [
                    Text(
                      'My Hobby',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HobbyText(text: 'Cooking'),
                    const SizedBox(width: 8),
                    HobbyText(text: 'Driving'),
                    const SizedBox(width: 8),
                    HobbyText(text: 'Shopping'),
                  ],
                ),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
