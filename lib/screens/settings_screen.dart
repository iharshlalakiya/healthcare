import 'package:flutter/material.dart';
import 'package:madical_healthcare/screens/welcome_screen.dart';

class SettingsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Settings",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("images/user.png"),
              ),
              title: Text(
                "Harsh",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),
              ),
              subtitle: Text(
                "Profile",
              ),
            ),
            Divider(height: 50),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  shape: BoxShape.circle, 
                  ),
                  child: Icon(
                    Icons.person,
                    color: Colors.blue,
                    size: 35,
                  ),
              ),
              title: Text("Profile",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 20),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  shape: BoxShape.circle, 
                  ),
                  child: Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.deepPurple,
                    size: 35,
                  ),
              ),
              title: Text("Notification",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 20),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade100,
                  shape: BoxShape.circle, 
                  ),
                  child: Icon(
                    Icons.privacy_tip_outlined,
                    color: Colors.indigo,
                    size: 35,
                  ),
              ),
              title: Text("Privacy",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 20),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  shape: BoxShape.circle, 
                  ),
                  child: Icon(
                    Icons.settings_suggest_outlined,
                    color: Colors.green,
                    size: 35,
                  ),
              ),
              title: Text("General",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 20),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  shape: BoxShape.circle, 
                  ),
                  child: Icon(
                    Icons.info_outline_rounded,
                    color: Colors.orange,
                    size: 35,
                  ),
              ),
              title: Text("About Us",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 20),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => WelcomeScreen(),
                ));
              },
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  shape: BoxShape.circle, 
                  ),
                  child: Icon(
                    Icons.logout,
                    color: Colors.red,
                    size: 35,
                  ),
              ),
              title: Text("Log Out",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            
          ],
        ),
      ),
    );
  }
}