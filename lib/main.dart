import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'page/splash_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
static final String title = 'Setup Firebase';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flower App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Gilroy',
      ),
      home: const SafeArea(
        child: SplashPage(),
      ),
    );
  }
}
