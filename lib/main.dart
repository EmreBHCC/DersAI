import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';
import 'splash_screen.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<UserCredential> registerWithEmail(String email, String password) async {
  return await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );
}

Future<UserCredential> loginWithEmail(String email, String password) async {
  return await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password,
  );
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print('🔥 App starting...'); // <- bu satır
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    print('✅ Firebase initialized');
    runApp(MyApp());
  } catch (e, stack) {
    print('❌ Firebase error: $e');
    print(stack);
    runApp(MaterialApp(home: Scaffold(body: Text('Firebase init error'))));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DersAI',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
