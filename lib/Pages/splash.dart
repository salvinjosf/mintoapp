
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mintoapp/Pages/login.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3),(){Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context)=>Login()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height*.25,
              child: Image.asset('lib/Assets/minto.png', fit: BoxFit.fitHeight,),
            ),
          ),
        ],
      ),
    );
  }
}
