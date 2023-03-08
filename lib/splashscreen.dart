import 'dart:async';
import 'package:flutter/material.dart';
import 'package:diagnosa_pk/home.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({Key? key}) : super(key:key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 2),(){
      Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/Logo-Puskesmas.png',
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const CircularProgressIndicator.adaptive(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}