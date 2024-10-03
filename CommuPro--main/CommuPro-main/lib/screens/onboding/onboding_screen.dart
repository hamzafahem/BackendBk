import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rive/rive.dart';

import 'components/animated_btn.dart';
import 'components/sign_in_form.dart';
import 'components/sign_up_form.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late RiveAnimationController _btnAnimationColtroller;

  @override
  void initState() {
    _btnAnimationColtroller = OneShotAnimation(
      "active",
      autoplay: false,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: MediaQuery.of(context).size.width * 1.7,
            top: -20,
            bottom: 10,
            left: 20,
            child: Image.asset("assets/Backgrounds/holo.png"),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
            ),
          ),
          const RiveAnimation.asset("assets/RiveAssets/shapes.riv"),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: const SizedBox(),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: SingleChildScrollView( // <-- Wrap Column with SingleChildScrollView
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 60),
                    const SizedBox(
                      width: 260,
                      child: Column(
                        children: [
                          Text(
                            "Elevate your\nCommunication",
                            style: TextStyle(
                              fontSize: 50,
                              fontFamily: "Poppins",
                              height: 1.2,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            "Chat seamlessly, make video calls, host meetings, manage your calendar and create groups, all in one place.",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 130),
                    AnimatedBtn(
                      btnAnimationColtroller: _btnAnimationColtroller,
                      press: () {
                        _btnAnimationColtroller.isActive = true;
                        showGeneralDialog(
                          barrierDismissible: true, // close it while tapping outside
                          barrierLabel: "Sign Up",
                          context: context,
                          pageBuilder: (context, _, __) => Center(
                            child: Container(
                              height: 640,
                              margin: const EdgeInsets.symmetric(horizontal: 16),
                              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                              ),
                              child: Scaffold(
                                backgroundColor: Colors.transparent,
                                body: SingleChildScrollView( // <-- Wrap Column with SingleChildScrollView
                                  child: Column(
                                    children: [
                                      const Text(
                                        "Join us now!",
                                        style: TextStyle(
                                          fontSize: 34,
                                          color: Colors.black,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(vertical: 1),
                                        child: Text(
                                          style: TextStyle(color: Colors.black),
                                          "Hey there! Let's get you started by entering your credentials",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      const SizedBox(height: 30),

                                      const SignUpForm(),
                                      const SizedBox(height: 10),

                                      const Row(
                                        children: [
                                          Expanded(child: Divider()),
                                          Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 16),
                                            child: Text(
                                              "OR",
                                              style: TextStyle(color: Colors.black26),
                                            ),
                                          ),
                                          Expanded(child: Divider()),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(vertical: 10),
                                        child: Text(
                                          "Use Google to Sign Up",
                                          style: TextStyle(color: Colors.black54),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: SvgPicture.asset(
                                              "assets/icons/20170301123009!Google__G__logo 1.svg",
                                              height: 44,
                                              width: 44,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 130),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account? ",
                            style: TextStyle(
                              fontSize: 14,
                              height: 1.5,
                              color: Colors.black,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              showGeneralDialog(
                                barrierDismissible: true, // close it while tapping outside
                                barrierLabel: "Sign In",
                                context: context,
                                pageBuilder: (context, _, __) => Center(
                                  child: Container(
                                    height: 550,
                                    margin: const EdgeInsets.symmetric(horizontal: 16),
                                    padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(40)),
                                    ),
                                    child: Scaffold(
                                      backgroundColor: Colors.transparent,
                                      body: SingleChildScrollView( // <-- Wrap Column with SingleChildScrollView
                                        child: Column(
                                          children: [
                                            const Text(
                                              "Sign In",
                                              style: TextStyle(
                                                fontSize: 34,
                                                color: Colors.black,
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.symmetric(vertical: 1),
                                              child: Text(
                                                style: TextStyle(color: Colors.black),
                                                "Welcome Back! You've been missed",
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            const SignInForm(),
                                            const SizedBox(height: 10),
                                            const Row(
                                              children: [
                                                Expanded(child: Divider()),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                                  child: Text(
                                                    "OR",
                                                    style: TextStyle(color: Colors.black26),
                                                  ),
                                                ),
                                                Expanded(child: Divider()),
                                              ],
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.symmetric(vertical: 20),
                                              child: Text(
                                                "Sign in with Google",
                                                style: TextStyle(color: Colors.black54),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                IconButton(
                                                  onPressed: () {},
                                                  icon: SvgPicture.asset(
                                                    "assets/icons/20170301123009!Google__G__logo 1.svg",
                                                    height: 44,
                                                    width: 44,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: const Text(
                              "Sign In",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Inter",
                                height: 1.5,
                                color: Color(0xff2e92df),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
