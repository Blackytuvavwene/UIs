import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sign_in_register_ui/src/utils/app_color.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.appBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),

            // TODO: Add illustration here on placeholder
            Center(
              child: SizedBox(
                width: size.width * 0.85,
                child: SvgPicture.asset(
                  'assets/images/working.svg',
                  height: size.height * 0.4,
                  width: 40,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            const Text(
              'Enterprise team collaboration.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.appWhite,
                fontSize: 36,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            const Text(
              '''Bring together your files, your tools,\n'''
              ''' projects and people. Including a new\n'''
              ''' mobile and desktop application.''',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.appGrey,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: size.height * 0.13,
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  height: size.height * 0.08,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppColor.appGrey,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Register',
                            style: TextStyle(
                              color: AppColor.appBlack,
                              fontSize: 18,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: AppColor.appWhite,
                            minimumSize: Size(
                              size.width,
                              size.height,
                            ),
                            maximumSize: Size(
                              size.width,
                              size.height,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            // backgroundColor: AppColor.appGreen,
                            minimumSize: Size(
                              size.width,
                              size.height,
                            ),
                            maximumSize: Size(
                              size.width,
                              size.height,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/signin');
                          },
                          child: const Text(
                            'Sign in',
                            style: TextStyle(
                              color: AppColor.appWhite,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
