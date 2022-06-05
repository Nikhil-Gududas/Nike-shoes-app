import 'package:flutter/material.dart';
import 'package:nike_shoes_app/constants.dart';
import 'package:nike_shoes_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    _navigatetoHome();
    super.initState();
  }

  _navigatetoHome() async {
    await Future.delayed(Duration(milliseconds: 1000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => const HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/Nike_logo.png',
          color: Colors.white,
        ),
      ),
    );
  }
}
