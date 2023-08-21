import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:madical_healthcare/screens/login_screen.dart';
import 'package:madical_healthcare/screens/welcome_screen.dart';

class SignUpScreen extends StatefulWidget {

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
              Padding(padding: EdgeInsets.all(20),  
              child: CircleAvatar(
                radius: 60,
                child: 
                Icon(Icons.add_a_photo_outlined, size: 60,),
                backgroundColor: Color(0xFF7165D6),
              ),
            ),
              SizedBox(height: 15),
              Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                decoration: InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                decoration: InputDecoration(
                  labelText: "Email Address",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  obscureText: passToggle ? true : false,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.key),
                  suffixIcon: InkWell(
                    onTap: (){
                      if(passToggle == true){
                          passToggle = false;
                        } else {
                          passToggle = true;
                        }
                        setState(() {});
                    },
                    child: passToggle 
                      ? Icon(CupertinoIcons.eye_slash_fill) 
                      : Icon(CupertinoIcons.eye_fill),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  obscureText: passToggle ? true : false,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.key),
                  suffixIcon: InkWell(
                    onTap: (){
                      if(passToggle == true){
                          passToggle = false;
                        } else {
                          passToggle = true;
                        }
                        setState(() {});
                    },
                    child: passToggle 
                      ? Icon(CupertinoIcons.eye_slash_fill) 
                      : Icon(CupertinoIcons.eye_fill),
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
                            builder: (context) => LoginScreen(),
                          ));
                        },
                        child: Padding(padding: EdgeInsetsDirectional.symmetric(vertical: 15, horizontal: 40),
                        child: Center(
                          child: Text("Create Account", 
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                      ), 
                    ),
                  ),
                ),
              ),
              ),
              ),
               ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have account?",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                  TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                  },
                  child: Text("Log In",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF7165D6),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}