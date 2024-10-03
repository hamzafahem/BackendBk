import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart'; // Assuming you are using the Iconsax package for custom icons

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Missed Calls Section
            const Text(
              "Missed Calls",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: "Poppins"),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/avatars/9.png'),
                backgroundColor: Colors.white,

              ),
              title: const Text("Oumaima", style: TextStyle(fontFamily: "Inter")),
              subtitle: const Text("2 hours ago"),
              trailing: const Icon(Iconsax.call),
              onTap: () {
                // Handle call action
              },
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.white,

                backgroundImage: AssetImage('assets/avatars/3.png'),
              ),
              title: const Text("Amina", style: TextStyle(fontFamily: "Inter")),
              subtitle: const Text("Yesterday"),
              trailing: const Icon(Iconsax.call),
              onTap: () {
                // Handle call action
              },
            ),
            const SizedBox(height: 20),

            // Ongoing Calls Section
            const Text(
              "Ongoing Call",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: "Poppins"),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/avatars/2.png'),
              ),
              title: const Text("Hamza", style: TextStyle(fontFamily: "Inter")),
              subtitle: const Text("Ongoing..."),
              trailing: const Icon(Iconsax.call_slash),
              onTap: () {
                // Handle end call action
              },
            ),
          ],
        ),
      ),
    );
  }
}
