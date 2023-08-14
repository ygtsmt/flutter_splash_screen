import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(backgroundColor: Colors.black, body: SplashScreen()),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future<void>.delayed(const Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const Anasayfa()));
    });

    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    return  Center(
      child:  Hero(
    tag: "logo",
    child: Image.asset(
      "assets/images/splash_amasya.png",
                height: MediaQuery.of(context).size.height / 4,

      
    ),
    )
    );
  }
}

class Anasayfa extends StatelessWidget {
  const Anasayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("ANASYAFAYA GELDI")),
    );
  }
}
