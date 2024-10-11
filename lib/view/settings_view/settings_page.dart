import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.white, // Set app bar background color
        elevation: 0, // Remove app bar shadow
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
              ),
            ],
          ),
          child: Column(
            children: [
              ListTile(
                title: Text("Account"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Navigate to Account page
                },
              ),
              Divider(),
              ListTile(
                title: Text("Term and Condition"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Navigate to Terms page
                },
              ),
              Divider(),
              ListTile(
                title: Text("Policy"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Navigate to Policy page
                },
              ),
              Divider(),
              ListTile(
                title: Text("About App"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Navigate to About App page
                },
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[100], // Light background
    );
  }
}

