import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../forgot_password/forgot_password_screen.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool rememberMe = false;
  bool forgotPasswordTapped = false;


  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SizedBox(height: 30),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(labelText: "Email", labelStyle: TextStyle(fontSize: 15, color: Colors.black54),prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: 10),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(labelText: "Password", labelStyle: TextStyle(fontSize: 15, color: Colors.black54),suffixIcon: Icon(Iconsax.eye_slash) ,prefixIcon: Icon(Iconsax.password_check)),
          ),
          Row(
            children: [
              Checkbox(
                value: rememberMe,
                activeColor: Color(0xff87ceeb),
                onChanged: (bool? value) {
                  setState(() {
                    rememberMe = value ?? false;
                  });
                },
              ),
              const Text("Remember me", style: TextStyle(fontFamily: "Inter", fontSize: 15)),
              const Spacer(), // To push the "Forgot Password?" to the right
              InkWell(
                onTap: () {
                  setState(() {
                    forgotPasswordTapped = true;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()),
                  ).then((_) {
                    setState(() {
                      forgotPasswordTapped = false;
                    });
                  });
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontFamily: "Inter", fontSize: 15,
                    decoration: TextDecoration.underline,
                    color: forgotPasswordTapped ? const Color(0xff87ceeb) : Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(top: 2, bottom: 4),
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff87ceeb),
                minimumSize: const Size(double.infinity, 56),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
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
    );
  }
}
