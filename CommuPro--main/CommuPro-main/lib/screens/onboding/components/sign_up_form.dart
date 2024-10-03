import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../otp/otp_screen.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: "First Name",
                    labelStyle: TextStyle(fontSize: 16, color: Colors.black54),
                    prefixIcon: Icon(Iconsax.user, size: 24),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: "Last Name",
                    labelStyle: TextStyle(fontSize: 16, color: Colors.black54),
                    prefixIcon: Icon(Iconsax.user_tick),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: "Email",
              labelStyle: TextStyle(fontSize: 16, color: Colors.black54),
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: "Password",
              labelStyle: TextStyle(fontSize: 16, color: Colors.black54),
              suffixIcon: Icon(Iconsax.eye_slash),
              prefixIcon: Icon(Iconsax.password_check),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            expands: false,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: "Confirm Password",
              labelStyle: TextStyle(fontSize: 16, color: Colors.black54),
              suffixIcon: Icon(Iconsax.eye_slash),
              prefixIcon: Icon(Iconsax.password_check),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff87ceeb),
                minimumSize: const Size(double.infinity, 56),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OtpScreen()),
                );
              },
              child: const Text(
                "Create Account",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
