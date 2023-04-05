import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter_wordpress_app/main.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.network(
          'https://businessbhutan.bt/wp-content/uploads/2022/09/lo.png'),
      // title: Text(
      //   "Title",
      //   style: TextStyle(
      //     fontSize: 18,
      //     fontWeight: FontWeight.bold,
      //   ),
      // ),
      backgroundColor: Colors.yellow,
      showLoader: true,
      navigator: MyHomePage(),
      durationInSeconds: 5,
      logoWidth: 100,
    );
  }
}
