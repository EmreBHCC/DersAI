import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signIn(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      Navigator.pushReplacementNamed(context, '/home');
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Hata: ${e.toString()}")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Giriş Yap', style: TextStyle(fontSize: 24)),
            TextField(controller: emailController, decoration: InputDecoration(labelText: 'E-mail')),
            TextField(controller: passwordController, decoration: InputDecoration(labelText: 'Şifre'), obscureText: true),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => signIn(context),
              child: Text("Giriş Yap"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text("Ya da Kaydol"),
            )
          ],
        ),
      ),
    );
  }
}
