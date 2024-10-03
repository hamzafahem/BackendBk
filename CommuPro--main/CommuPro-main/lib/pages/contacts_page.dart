import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Contacts",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ContactTile(
              profileImage: "assets/avatars/1.png",
              contactName: "John Doe",
              onMessageTap: () {
                // Navigate to messaging screen
              },
              onCallTap: () {
                // Navigate to call screen
              },
            ),
            ContactTile(
              profileImage: "assets/avatars/2.png",
              contactName: "Jane Smith",
              onMessageTap: () {
                // Navigate to messaging screen
              },
              onCallTap: () {
                // Navigate to call screen
              },
            ),
            ContactTile(
              profileImage: "assets/avatars/3.png",
              contactName: "Alex Johnson",
              onMessageTap: () {
                // Navigate to messaging screen
              },
              onCallTap: () {
                // Navigate to call screen
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ContactTile extends StatelessWidget {
  final String profileImage;
  final String contactName;
  final VoidCallback onMessageTap;
  final VoidCallback onCallTap;

  const ContactTile({
    Key? key,
    required this.profileImage,
    required this.contactName,
    required this.onMessageTap,
    required this.onCallTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(profileImage),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Text(
              contactName,
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            icon: Icon(CupertinoIcons.chat_bubble_fill),
            onPressed: onMessageTap,
          ),
          IconButton(
            icon: Icon(CupertinoIcons.phone_fill),
            onPressed: onCallTap,
          ),
        ],
      ),
    );
  }
}
