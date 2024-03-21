
import 'package:aryan_flutter/main.dart';
import 'package:aryan_flutter/myhmp.dart';
import 'package:aryan_flutter/started.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    Future.delayed(
      Duration(seconds: 5),
      (){
        Navigator.of(context).push(MaterialPageRoute(
          builder:(context){
            //return MyHomePageScreen();
            return Started();
          },
        ));
      },
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/animation_lmztlsfw.json'),
            // Image.network('https://media.tenor.com/QJNoPeq9WmUAAAAC/netflix-intro-netflix.gif',fit:BoxFit.fill,
            // color: Colors.transparent,
            // height: 700,
            // width: double.infinity,),
          //   const Padding(
          //    padding: const EdgeInsets.all(8.0),
          //    child: Text('Demon Slayer'),
          //  ),
            

            
            
          ],
        ),
      ),
    );
  }
}