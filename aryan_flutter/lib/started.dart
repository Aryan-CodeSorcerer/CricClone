import 'package:aryan_flutter/WebSignIn.dart';
import 'package:aryan_flutter/login.dart';
import 'package:aryan_flutter/main.dart';
import 'package:aryan_flutter/myhmp.dart';
import 'package:aryan_flutter/pract.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Started extends StatefulWidget {
  const Started({super.key});

  @override
  State<Started> createState() => _StartedState();
}

class _StartedState extends State<Started> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
       appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Image.network('https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/227_Netflix_logo-512.png'),
        actions: [
         TextButton(onPressed: (){
          launchUrl(
          Uri.parse( 'https://help.netflix.com/legal/privacy?netflixsource=android&fromApp=true'),);
         }, child: Text('Privacy',
         style: TextStyle(color: Colors.white),),),
         TextButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
          builder:(context){
            return Web_SignIn();
          },
        ));
         }, child: Text('Sign In',
         style: TextStyle(color: Colors.white),),),
         //Icon(Icons.more_vert),
         IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
         
        ],
       ),
       bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height/20,
        width: double.infinity,
        color: Colors.red,
        child: 
        TextButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
          builder:(context){
            return const Web_SignIn();
          },
        ));
        }, child: Text('GET STARTED',
        style: TextStyle(color: Colors.white),))
        
       ),
       body:Container(
        child: Image.network('https://staticg.sportskeeda.com/editor/2022/04/6ab9c-16497624720664-1920.jpg?w=840',fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,),
       ),
       
      
    );
  }
}
