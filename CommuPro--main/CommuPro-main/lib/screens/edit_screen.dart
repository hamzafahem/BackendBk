import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../widgets/edit_item.dart';

class EditAccountScreen extends StatefulWidget {
  const EditAccountScreen({super.key});

  @override
  State<EditAccountScreen> createState() => _EditAccountScreenState();
}

class _EditAccountScreenState extends State<EditAccountScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
        onPressed: () {
      Navigator.pop(context);
    },
    icon: const Icon(CupertinoIcons.left_chevron),
    ),
          title: Text("Account", style: TextStyle(fontFamily: "Poppins",
            fontSize: 36,
            fontWeight: FontWeight.bold,),
          ),
    ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Image.asset("assets/avatars/9.png",
                      height: 80,
                      width: 80,),
                    TextButton(onPressed: (){},
                        child: Text("Change Picture")
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Divider(),
              SizedBox(height:8),
              Text("Profile information", style: TextStyle(fontFamily: "Poppins"),),
              SizedBox(height:8),

              SizedBox(
                height: 10,
              ),

              const Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      "Name", style: TextStyle(fontSize: 13, fontFamily: "Poppins", overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text("Oumaima", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis),
                    ),
                  ),
                Expanded(child: Icon(CupertinoIcons.right_chevron,size: 18)),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      "Email", style: TextStyle(fontSize: 13, fontFamily: "Poppins", overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text("oumaima@gmail.com", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  Expanded(child: Icon(CupertinoIcons.right_chevron,size: 18)),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      "Phone number", style: TextStyle(fontSize: 13, fontFamily: "Poppins", overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text("12345", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  Expanded(child: Icon(CupertinoIcons.right_chevron,size: 18)),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      "Date of birth", style: TextStyle(fontSize: 13, fontFamily: "Poppins", overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text("29/06/2000", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  Expanded(child: Icon(CupertinoIcons.right_chevron,size: 18)),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      "Gender", style: TextStyle(fontSize: 13, fontFamily: "Poppins", overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text("Female", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  Expanded(child: Icon(CupertinoIcons.right_chevron,size: 18)),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      "Bio", style: TextStyle(fontSize: 13, fontFamily: "Poppins", overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text("", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  Expanded(child: Icon(CupertinoIcons.right_chevron,size: 18)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
