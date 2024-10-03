import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rive/rive.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                child: Image.asset("assets/Backgrounds/Attention.png"),
              ),
              const SizedBox(height: 50),
              const Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: "Poppins",
                  color: Colors.black,
                ),
              ),
              const Text(
                "Please enter your email address to reset your password.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontFamily: "Inter"),
              ),
              const SizedBox(height: 40),
              TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(fontSize: 16, color: Colors.black54),
                  prefixIcon: Icon(Iconsax.direct),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(top: 2, bottom: 4),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xfff9b0a0),
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
      ),
    );
  }
}
