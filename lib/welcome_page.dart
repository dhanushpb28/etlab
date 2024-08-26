import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          TextButton(
            onPressed: () {
              // Navigate back to LoginPage
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            child: const Text(
              'Logout',
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
            ),
          ),
          SizedBox(width: 16.0), // Optional spacing between button and end of AppBar
        ],
        automaticallyImplyLeading: false, // Hide the back button
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to the app!',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
