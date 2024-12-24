import 'package:flutter/material.dart';
import '../widgets/bottomBar.dart'; 

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Account",
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Section
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                    'assets/images/avatar.jpg',
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "John Doe", // Replace with user's name
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.deepPurple,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "johndoe@example.com", // Replace with user's email
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 32),

            // Account Options
            ListTile(
              leading: Icon(Icons.person, color: Colors.deepPurple),
              title: Text("Edit Profile"),
              onTap: () {
                // Handle Edit Profile action
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.lock, color: Colors.deepPurple),
              title: Text("Change Password"),
              onTap: () {
                // Handle Change Password action
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.notifications, color: Colors.deepPurple),
              title: Text("Notifications"),
              onTap: () {
                // Handle Notifications action
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.credit_card, color: Colors.deepPurple),
              title: Text("Payment Methods"),
              onTap: () {
                // Handle Payment Methods action
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.deepPurple),
              title: Text("Log Out"),
              onTap: () {
                // Handle Log Out action
              },
            ),
          ],
        ),
      ),
                      bottomNavigationBar: BottomBar(),
    );

  }
}
