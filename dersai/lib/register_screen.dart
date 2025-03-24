import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  void register(BuildContext context) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      Navigator.pushReplacementNamed(context, '/home');
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Kayıt Hatası: ${e.toString()}")),
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
            Text('Kaydol', style: TextStyle(fontSize: 24)),
            TextField(controller: emailController, decoration: InputDecoration(labelText: 'E-mail')),
            TextField(controller: nameController, decoration: InputDecoration(labelText: 'İsim')),
            TextField(controller: passwordController, decoration: InputDecoration(labelText: 'Şifre'), obscureText: true),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => register(context),
              child: Text("Kaydol"),
            )
          ],
        ),
      ),
    );
  }
}
