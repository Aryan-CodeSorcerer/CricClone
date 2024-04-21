// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: 
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Email Id',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                onChanged: (value) {
                  setState(() {});
                },
              ),

              
              SizedBox(height: 20),


              RichText(
                text: TextSpan(
                  text: "By continuing you agree with our ",
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                  children: [
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(color: Colors.blue,
                      decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Handle Privacy Policy button tap
                        },
                    ),
                    TextSpan(
                      text: ' and ',
                      style: TextStyle(color: Colors.grey,
                      ),
                    ),
                    TextSpan(
                      text: 'T&C',
                      style: TextStyle(color: Colors.blue,
                      decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Handle T&C button tap
                        },
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration:BoxDecoration(color: Colors.purple),
                  child: TextButton(onPressed: (){}, 
                  child: Text('Continue',style: TextStyle(color: Colors.white,),
                  )),
                ),
              ),

              SizedBox(height: 25,),

              Center(child: Text('Already have an account?')),

              Center(child: TextButton(onPressed: (){}, child:
               Text('Log In',style: TextStyle(color: Colors.white),)))


            ],
          ),
        ),
      ),
    );
  }
}