import 'package:flutter/material.dart';
import 'welcome_page.dart'; // Import the new file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  'https://mgmits.ac.in/wp-content/themes/muthoot/images/MITS-LOGO-NEW.jpeg',
                  height: 120.0,
                ),
                const SizedBox(height: 40.0),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'USERNAME',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'PASSWORD ',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to WelcomePage on login
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WelcomePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 25.0 ,color: Colors.white),
                      
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                TextButton(
                  onPressed: () {
                    // Handle forgot password action here
                  },
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
