// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:aryan_flutter/myhmp.dart';
import 'package:aryan_flutter/started.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();

  bool obscureText=true;

  //String ?errorText; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
          builder:(context){
            return Started();
          },
        ));
        }, icon: Icon(Icons.arrow_back_sharp),color: Colors.white,),
        title: Image.asset('assets/logos_netflix.png',
        height: 37.2,
        
        )
      ),

      body: Column(children: [
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 500,
            child: TextField(
              
              style: TextStyle(color: Colors.white),
              controller: controller,
              onChanged: (value) {
                setState(() {
                  
                });
              },
              enabled: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                //hintText: 'Enter Email Id',
                labelText: 'Enter Email',
                labelStyle: TextStyle(color:Colors.white),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                      color: Colors.red
                    )
                    ),
                    enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey
                  )
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue
                  )
                )
              ),   
            ),
          ),
        ),
      ),
      //222222222222222222----------------------------------------------------------------------
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 500,
            child: TextField(
              obscureText: obscureText,
              controller: passwordcontroller,
              onChanged: (value) {
                setState(() {
                  
                });
              },
              enabled: true,
              //keyboardType: TextInputType.text,
              decoration: InputDecoration(
                suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      child: !obscureText
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),),
                //hintText: 'Enter Email Id',
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                      color: Colors.red
                    )
                    ),
                    enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey
                  )
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey
                  )
                ),
              
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
     
      // Center(
      //     child: Container(
      //         height: 40,
      //         width: double.infinity,
      //         decoration: BoxDecoration(color: Colors.grey,),
      //         child: Column(
                
      //             children: [ 
      //               InkWell(
      //                  onTap: (){
      //                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
      //                     return MyAppHome();
      //                   }));
      //                  },      
      //          child: 
      //           Text(
      //             'Sign In',
      //             style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.normal,),textAlign: TextAlign.center,
      //           ),
              
      //         ),
      //         ],
      //         ),
      //       ),
      //   ),
        Container(
          height: 100,
          child: TextButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                          return MyAppHome();
                        }));
          }, child:Text('Sign In',
          style:TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.normal,) ,)),
        )
      //TextButton(onPressed: (){}, child: Text('Sign In'))
      
        
      ]),
    );
  }
}