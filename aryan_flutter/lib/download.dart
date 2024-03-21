// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Inroduction to Downloads',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.',
          style: TextStyle(color: Colors.white,fontSize:10 ),),
          SizedBox(height: 20),
          Center(child: Container(
            height:177,
            width: 177,
            decoration: BoxDecoration(

              shape: BoxShape.circle,
              color:Color(0xff424242),
              
            ),
          ),
          
          
          ),
          SizedBox(height: 20,),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.blue,
            ),
            child:TextButton(onPressed: (){}, child: Text('Setup',
            style: TextStyle(color: Colors.white),
            )
            ),
            
          )
        ],
      ),
        
    );
  }
}