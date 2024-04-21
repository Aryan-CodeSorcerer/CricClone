// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:aj/mainpage.dart';
import 'package:aj/signup.dart';
import 'package:aj/splashh.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:url_launcher/url_launcher.dart';



class Web_SignIn extends StatefulWidget {
  const Web_SignIn({super.key});

  @override
  State<Web_SignIn> createState() => _Web_SignInState();
}

class _Web_SignInState extends State<Web_SignIn> {
  TextEditingController Econtroller=TextEditingController();
  TextEditingController Passwordcontroller=TextEditingController();

  bool pwdobscureText=true;

  String ? errorText;
  String ? errorTextpwd;
  bool isChecked= true;
  bool isTapLearnMore=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
     // body:
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.1),
          child: Container(
            
             child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(4)
                ),
                height: (MediaQuery.of(context).size.height*0.74),
                width: (MediaQuery.of(context).size.width*0.78),
                
                // height: (MediaQuery.of(context).size.width<740)
                // ? MediaQuery.of(context).size.height
                // :610,
                // width: (MediaQuery.of(context).size.width<740)
                // ? MediaQuery.of(context).size.width
                // : 440,
                //color: Colors.black87,
               child: 
               Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0,vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment:MainAxisAlignment.start ,
                  children: [
                    Center(
                      child: Text('Log In',
                      style: TextStyle(
                        color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: Econtroller,
                    cursorColor: Colors.grey,
                   // doubt cursorHeight: 5,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)
                      ),
                      labelText: 'Enter Email Id',
                      labelStyle: TextStyle(color: Colors.grey),
                      //fillColor: Colors.grey[800],
                      filled: true,
                      errorText: errorText,
                    ), 
                  ),
                ),
                SizedBox(height: 5,),
                //=--------------------------------------------=2password
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: pwdobscureText,
                    controller: Passwordcontroller,
                     style: TextStyle(color: Colors.grey),
                     cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      suffixIcon: TextButton(onPressed: (){
                        setState(() {
                          pwdobscureText= !pwdobscureText;
                        });
                      }, 
                      child: Text(pwdobscureText
                      ? 'Show'
                      : 'Hide',
                      style: TextStyle(color: Colors.grey),)
                      ),
                      
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.grey),
                     // fillColor: Colors.grey[800],
                      filled: true,
                      errorText: errorTextpwd,
                    ),
                  ),
                ),
                //---------------------------------------------------sign in
                SizedBox(height: 20,),
                InkWell(
                  onTap: () async {
                    
                    if(Passwordcontroller.text.isEmpty&&Econtroller.text.isEmpty)
                    {
                      setState(() {
                        errorText='Please Enter a Valid Email Address';
                        errorTextpwd='Your password must contain between 4 & 60 Characters';
                      });
                    }
                    else if(Econtroller.text.isEmpty|| !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                               .hasMatch(Econtroller.text))
                               {
                                setState(() {
                                errorText='Please Enter a Valid Email Address';
                                errorTextpwd=null;
                                });
                               }
                    else if(Passwordcontroller.text.length<4)
                    {
                      setState(() {
                        errorText=null;
                        errorTextpwd='Your password must contain between 4 & 60 Characters';
                      });
                    }
                    else
                    {
                        errorText=null;
                        errorTextpwd=null;
              
              // }
          FirebaseAuth.instance.currentUser
          ?.sendEmailVerification();
                      try {
          final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: Econtroller.text,
            password: Passwordcontroller.text
          );
              } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            print('No user found for that email.');
          } else if (e.code == 'wrong-password') {
            print('Wrong password provided for that user.');
          }
              }
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)
                        {
                          return MainPage();
                        })
                        );
                    }
              
                  },
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 192, 111, 187),
                      borderRadius: BorderRadius.vertical()
                    ),
                    child: Center(
                      child: Text('Log In',
                      style: TextStyle(color: Colors.white,
                      fontSize: 20),),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  
                 ),
                 Center(child: SizedBox(height: 25,)),
                 RichText(text: TextSpan(
                  text: "Don't have account? ",
                  style: TextStyle(color: Colors.grey,fontSize: 17),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                    ..onTap = ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context) {return SignUp();
                    },)
                    ),
                    
                      text: 'Sign Up ',
                      style: TextStyle(color: Colors.purple),
                      
              
                    ),
              
                  ],
                 ),
               ),              
               SizedBox(height: 15,),
               RichText(text: TextSpan(
                text: "This page is protected by Google reCAPTCHA to ensure you're not a bot.",
                style: TextStyle(color: Colors.grey,fontSize: 17),
                children: [
                  TextSpan(
                    text: 'LearnMore.',
                    style: TextStyle(color: Color.fromARGB(255, 25, 0, 255)),
                    recognizer: TapGestureRecognizer()
                    ..onTap = () 
                    {
                      setState(() {
                        isTapLearnMore=true;
                      });
                    }
                  )
                ]
               ),
               
               ),
               SizedBox(height: 10,),
               Visibility(
                visible: isTapLearnMore,
                child: Text('The information collected by Google reCAPTCHA is subject to the Google Privacy Policy and Terms of Service, and is used for providing, maintaining, and improving the reCAPTCHA service and for general security purposes (it is not used for personalised advertising by Google).',
               style: TextStyle(color: Colors.white),))
                  ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}