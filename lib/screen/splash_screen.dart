import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';
import 'package:poolr/screen/tab_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const TabBarPage();
      }));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff266578),
      body: Center(
        child: SvgPicture.asset('assets/images/img_1.svg'),
      ),
    );
  }
}
