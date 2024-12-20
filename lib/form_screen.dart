import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'contact_screen.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final contactController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: contactController,
              decoration: const InputDecoration(labelText: 'Contact'),
            ),
            ElevatedButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                await prefs.setString('name', nameController.text);
                await prefs.setString('email', emailController.text);
                await prefs.setString('contact', contactController.text);

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactScreen()),
                );
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}