import 'package:flutter/material.dart';
import 'package:flutter_final/form_screen.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network('https://picsum.photos/400/200'),
          const Text('I am <Your Full Name>'),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FormScreen()),
              );
            },
            child: const Text('Get Started'),
          ),
        ],
      ),
    );
  }
}