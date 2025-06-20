import 'package:flutter/material.dart';

class HomeGreetingWidget extends StatelessWidget {
  final String userName;

  const HomeGreetingWidget({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Icon(Icons.waving_hand, size: 50, color: Colors.orangeAccent),
            const SizedBox(height: 10),
            Text(
              'Olá, $userName!',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.deepPurple),
            ),
            const Text(
              'Que bom ter você aqui.',
              style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 53, 52, 52)),
            ),
          ],
        ),
      ),
    );
  }
}