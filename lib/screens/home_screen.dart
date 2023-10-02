import 'package:flutter/material.dart';

import '../features/auth/auth_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hello')),
      body: SafeArea(
        child: Column(
          children: [
            const Text('aaaa'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AuthScreen.routeName);
              },
              child: const Text('button'),
            ),
          ],
        ),
      ),
    );
  }
}
