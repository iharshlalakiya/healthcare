import 'package:flutter/material.dart';
import 'package:madical_healthcare/screens/login_screen.dart';

class ForgotScreen extends StatefulWidget {
  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}
class _ForgotScreenState extends State<ForgotScreen> {
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
                            builder: (context) => LoginScreen(),
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
                child:Image.asset("images/doctors.png"), 
              ),
              SizedBox(height: 10),
              Padding(padding: EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Emil Address"),
                  prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                      color: Color(0xFF7165D6),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: (){
                          // Navigator.push(context, MaterialPageRoute(
                          //   builder: (context) => SignUpScreen(),
                          // ));
                        },
                        child: Padding(padding: EdgeInsetsDirectional.symmetric(vertical: 15, horizontal: 40),
                        child: Center(
                          child: Text("Submit", 
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
            ],
          ) 
        ),
      ),
    );
  }
}