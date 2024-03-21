// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:Center(
          child: Image.asset('assets/logos_netflix.png',
          height: 37.2,
          color: Colors.transparent,),
        ) ,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.white,))
        ],
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(),
            GridView.builder(gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.1,
              crossAxisCount: 2,
              crossAxisSpacing: 30,
              mainAxisSpacing: 20,
            ),
            shrinkWrap: true,
            //itemCount: image.length,
             itemBuilder:(context, index)
             {
              return Column(
                children: [
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                     // image: DecorationImage(image: FileImage(image[index]))
                    ),
                    

                  ),
                  SizedBox(height: 8),
                  Text('User name',style:TextStyle(color: Colors.white,))
                ],
              );
             }
             )
            ],
        ) ,
      ),
      // body: Column(
      //   children: [
      //     Container(
      //       decoration: BoxDecoration(
      //         shape: BoxShape.circle,
      //         color: Colors.white
      //       ),
      //       child: IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.black,size: 45,
      //       )),
      //     ),
      //     Text('Profile',)
      //   ],
      // ),

    );
  }
}