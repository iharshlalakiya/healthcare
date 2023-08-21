
// ignore_for_file: unused_element, unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:madical_healthcare/screens/forgot_screen.dart';

import 'package:madical_healthcare/screens/signup_screen.dart';
import 'package:madical_healthcare/screens/welcome_screen.dart';
import 'package:madical_healthcare/widgets/navbar_root.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                            builder: (context) => WelcomeScreen(),
                          ));
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Color(0xFF7165D6),
                      size: 25,
                    ),
                  ),
                ],
                          ),
              ),
              SizedBox(height: 10),
              Padding(
                padding:EdgeInsets.all(20), 
                child:Image.asset("images/1.png"), 
              ),
              SizedBox(height: 10),
              Padding(padding: EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Enter Username"),
                  prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(12),
              child: TextField(
                obscureText: passToggle ? true : false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Password"),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: InkWell(
                    onTap: (){
                      if(passToggle == true){
                        passToggle = false;
                      } else {
                        passToggle = true;

                      }
                      setState(() {
                        
                      });
                    },
                    child: passToggle 
                      ? Icon(CupertinoIcons.eye_slash_fill) 
                      : Icon(CupertinoIcons.eye_fill),
                   )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 243),
                child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => ForgotScreen(),
                          ));
                  },
                  child: Text("Forgot Password",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF7165D6),
                      ),
                    ),
                  ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                      color: Color(0xFF7165D6),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => NavBarRoots(),
                          ));
                        },
                        child: Padding(padding: EdgeInsetsDirectional.symmetric(vertical: 15, horizontal: 40),
                        child: Center(
                          child: Text("Log In", 
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                              ) 
                            ),
                        ),
                        ),
                      ),
                    ),
                ),
              ),
              //SizedBox(height: 20),
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have any account?",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),
                    TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ));
                    },
                    child: Text("Creat Account",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF7165D6),
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ) ,
        ),
      ),  
    );
  }
}


