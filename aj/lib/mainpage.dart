// ignore_for_file: prefer_const_constructors

import 'package:aj/login.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: const Color.fromARGB(255, 255, 7, 7),
 title: TextButton(
          onPressed: (){},
          child: 
        Text("Live Scores",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        )),
        centerTitle: true,
        
        actions: [
          TextButton(
            onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context){return Web_SignIn();},));
              //print('Live Score');
            }, child:Text('Login',style: TextStyle(fontSize: 16,color: Colors.white),))
            ],
            
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is the main page!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Action to perform when the button is pressed
                print('Button pressed!');
              },
              child: Text(
                'Press Me',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
