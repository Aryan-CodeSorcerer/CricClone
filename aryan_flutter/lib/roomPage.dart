// ignore_for_file: prefer_const_constructors

import 'package:aryan_flutter/comingsoon.dart';
import 'package:aryan_flutter/download.dart';
import 'package:aryan_flutter/more.dart';
import 'package:aryan_flutter/netflixhome.dart';
import 'package:aryan_flutter/search1.dart';
import 'package:flutter/material.dart';

class roomPage extends StatefulWidget {
  const roomPage({super.key});

  @override
  State<roomPage> createState() => _roomPageState();
}

class _roomPageState extends State<roomPage> {
  List widgets=[
    NetflixHome(),
    SearchScreen(),
    ComingSoonScreen(),
    DownloadScreen(),
    MoreScreen(),
    
  ];
  //body switch screen
  
  static int current=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      body: widgets[current],
      bottomNavigationBar: 
      SizedBox(
        height: MediaQuery.of(context).size.height/13,
        width: double.infinity,
       child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                
                child: TextButton(onPressed: (){
                  setState(() {
                    current=0;
                  });
                }, child: Image.asset('assets/home.png',
                color:current==0
                ?Colors.white
                :Colors.grey,
                )),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){
                  setState(() {
                    current=1;
                  });
                }, child: Image.asset('assets/search.png',
                color: current==1
                ?Colors.white
                :Colors.grey,
                )),
              ),
               Padding(
                
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){
                  setState(() {
                    current=2;
                  });
                }, child: Image.asset('assets/commingsoon.png',
                color: current==2
                ?Colors.white
                :Colors.grey,
                )),
                
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){
                  setState(() {
                    current=3;
                  });
                }, child:Image.asset('assets/download.png',
                color: current==3
                ?Colors.white
                :Colors.grey,
                ) ),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){
                  setState(() {
                    current=4;
                  });
                }, child: Image.asset('assets/more.png',
                color: current==4
                ?Colors.white
                :Colors.grey,
                )),
              ),
            ],
          ),
        )
      ),
      

    );
  }
}