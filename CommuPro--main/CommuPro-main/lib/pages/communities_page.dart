import 'package:flutter/material.dart';

class CommunitiesPage extends StatelessWidget {
  const CommunitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Existing Communities
            const Text(
              "Communities for you",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  _CommunityTile(
                    communityName: "Flutter Devs",
                    description: "A community for Flutter developers",
                    onJoinPressed: () {
                      // Handle join community action
                    },
                  ),
                  _CommunityTile(
                    communityName: "Spring Boot Devs",
                    description: "A community for Spring Boot Devs",
                    onJoinPressed: () {
                      // Handle join community action
                    },
                  ),
                  _CommunityTile(
                    communityName: "Business",
                    description: "A space for business professionals",
                    onJoinPressed: () {
                      // Handle join community action
                    },
                  ),
                  // Add more communities here
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Add Community Button
            ElevatedButton.icon(
              onPressed: () {
                _showAddCommunityDialog(context);
              },
              icon: const Icon(Icons.add, color: Colors.black,),
              label: const Text("Add Community", style: TextStyle(color: Colors.black, fontFamily: 'Poppins'),),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff87ceeb),
                minimumSize: const Size(double.infinity, 56),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to show a dialog for adding a community
  void _showAddCommunityDialog(BuildContext context) {
    final TextEditingController communityNameController =
    TextEditingController();
    final TextEditingController communityDescController =
    TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text("Add a New Community", style: TextStyle(fontFamily: "Poppins", color: Colors.black),),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: communityNameController,
                decoration: const InputDecoration(labelText: "Community Name"),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: communityDescController,
                decoration:
                const InputDecoration(labelText: "Community Description"),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Handle adding the community
                Navigator.of(context).pop();
              },
              child: const Text("Add", style: TextStyle(fontFamily: "Poppins", color: Colors.black),),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cancel", style: TextStyle(fontFamily: "Poppins", color: Colors.black),),
            ),
          ],
        );
      },
    );
  }
}

class _CommunityTile extends StatelessWidget {
  final String communityName;
  final String description;
  final VoidCallback onJoinPressed;

  const _CommunityTile({
    required this.communityName,
    required this.description,
    required this.onJoinPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffddf0fa),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(communityName, style: TextStyle(fontFamily: ("Poppins")),),
        subtitle: Text(description,style: TextStyle(fontFamily: ("Inter")),),
        trailing: ElevatedButton(
          onPressed: onJoinPressed,
          child: const Text("Join", style: TextStyle(color: Colors.black),),
        ),
      ),
    );
  }
}
