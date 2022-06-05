import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:nike_shoes_app/screens/splash_screen.dart';
import 'screens/home_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nike App',

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        }),
        appBarTheme: const AppBarTheme(

            // color: Colors.white,
            backgroundColor: Colors.white),
        brightness: Brightness.light,
        canvasColor: Colors.white,
      ),
      // home: const HomeScreen(),
      home: AnimatedSplashScreen(
          duration: 1000,
          backgroundColor: Colors.white,
          splash: Center(
            child: Image.asset(
              'assets/images/Nike_logo.png',
              color: Colors.black,
            ),
          ),
          nextScreen: const HomeScreen()),
    );
  }
}

// class PageSlideTransition extends PageTransitionsBuilder {
//   const PageSlideTransition();
//   @override
//   Widget buildTransitions<T>(
//       PageRoute<T> route,
//       BuildContext context,
//       Animation<double> animation,
//       Animation<double> secondaryAnimation,
//       Widget child) {
//     return SlideTransition(
//         position: animation.drive(Tween(
//           begin: const Offset(1, 0),
//           end: Offset.zero,
//         ).chain(CurveTween(curve: Curves.easeInCubic))),
//         child: child);
//   }
// }
