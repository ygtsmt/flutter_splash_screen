import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const Scaffold(
        body: SplashScreen(), // Açılış ekranının olduğu sayfayı ekliyoruz
      ),
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
    Future<void>.delayed(const Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const Anasayfa()));
    });

    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    bool isDarkTheme = Theme.of(context).brightness == Brightness.dark;

    return Center(
        child: Hero(
      tag: "logo",
      child: Image.asset(
        "assets/images/splash_amasya.png",
        color: isDarkTheme ? Colors.white : Colors.black,
        height: MediaQuery.of(context).size.height / 4,
      ),
    ));
  }
}

class Anasayfa extends StatelessWidget {
  const Anasayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("HOMEPAGE"),
      ),
      body: const Center(child: Text("HOMEPAGE BODY")),
    );
  }
}
