import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Name: <Any text>'),
          const Text('Email: <Any text>'),
          const Text('Contact: <Any text>'),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Edit'),
          ),
        ],
      ),
    );
  }
}