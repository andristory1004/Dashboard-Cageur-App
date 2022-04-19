import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class splash extends StatefulWidget {
  const splash({ Key? key }) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startSplash();
  }

  startSplash() async{
    var duration = Duration(seconds: 5);
    return Timer(duration, (){
    Get.to('/SignIn');
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 126, 122, 122),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Lottie.network('https://assets1.lottiefiles.com/packages/lf20_fxvz0c.json',)
          ],
        ),
      ),
    );
  }
}