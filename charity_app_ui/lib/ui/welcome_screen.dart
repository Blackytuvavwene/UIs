import 'package:charity_app_ui/ui/colors.dart';
import 'package:charity_app_ui/ui/pics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class WelcomeScreen extends HookWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: height,
          width: width,
          child: Column(
            children: [
              SizedBox(height: height * 0.03),
              Expanded(
                flex: 7,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          boyPic,
                          fit: BoxFit.fitWidth,
                          width: width,
                          height: height,
                        ),
                      ),
                      Positioned(
                        left: width * 0.35,
                        top: height * 0.185,
                        child: IconButton(
                          onPressed: () {},
                          icon: Container(
                            alignment: Alignment.center,
                            child: const Center(
                              child: Icon(
                                Icons.play_circle_fill_rounded,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //
              SizedBox(
                height: height * 0.03,
              ),
              const Text(
                "Everyone Can\nHelp Someone",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              const Expanded(
                child: Text(
                  'When we give cheerfully and accept\ngreatfully, everyone is blessed.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black38,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.08,
              ),
              Expanded(
                child: SizedBox(
                  width: width * 0.85,
                  height: height * 0.07,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              )
            ],
          ),
        ),
      ),
    );
  }
}
