import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "",
          style: TextStyle(fontFamily: "Inter", fontSize: 18),
        ),
      ),
        body: Center(

          child: SingleChildScrollView(
            // Added SingleChildScrollView
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Positioned(
                  width: MediaQuery.of(context).size.width * 1.7,
                  child: Image.asset("assets/Backgrounds/Checkbox.png"),
                ),
                const SizedBox(height: 50),
                const Text(
                  "Verification Code",
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: "Poppins",
                    color: Colors.black,
                  ),
                ),
                const Text(
                  "Enter the 4 digits code that received on your email",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, fontFamily: "Inter"),
                ),
                const SizedBox(height: 40),
                
                 Form(
                    child: Row(
                  children: [
                    SizedBox(
                      width: 60,
                      child: TextFormField(
                      style: TextStyle(
                        fontSize: 24),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.black),
                          )
                        ),
                    ),
                    ),
                  ],
                )
                ),
                
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(top: 2, bottom: 4),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff7bd2e1),
                      minimumSize: const Size(double.infinity, 56),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(14),
                        ),
                      ),
                    ),
                    label: const Text(
                      "Continue",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
