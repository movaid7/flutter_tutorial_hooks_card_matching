import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeff1f5),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                'Card Matcher',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1d1d1d),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Tap the cards to match them!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1d1d1d),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Score: 0',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1d1d1d),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 4,
                  children: List.generate(
                    16,
                    (index) => Card(
                      child: Center(child: Text((index + 1).toString())),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
