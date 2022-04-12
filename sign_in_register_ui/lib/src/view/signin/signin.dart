import 'package:flutter/material.dart';
import 'package:sign_in_register_ui/src/utils/app_color.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.appBlack,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.appBlack,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.turn_left),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: size.height * 0.04,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.05,
                right: size.width * 0.05,
              ),
              child: const Text(
                'Let\'s sign you in.',
                style: TextStyle(
                  color: AppColor.appWhite,
                  fontSize: 36,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.05),
              child: const Text(
                'Welcome back.\nYou\'ve been missed!',
                style: TextStyle(
                  color: AppColor.appWhite,
                  fontSize: 34,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Form(
              child: ListView(
                padding: EdgeInsets.only(
                  left: size.width * 0.05,
                  right: size.width * 0.05,
                ),
                shrinkWrap: true,
                children: [
                  const _MyTextField(
                    hint: 'Phone, email or username',
                  ),
                  SizedBox(
                    height: size.width * 0.05,
                  ),
                  _MyTextField(
                    hint: 'Password',
                    obscureIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: AppColor.appGrey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.25,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.05,
                right: size.width * 0.05,
              ),
              child: const Text.rich(
                TextSpan(
                  text: 'Don\'t have an account?',
                  style: TextStyle(
                    color: AppColor.appGrey,
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: ' Register',
                      style: TextStyle(
                        color: AppColor.appWhite,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 18, color: AppColor.appBlack),
                ),
                style: ElevatedButton.styleFrom(
                  primary: AppColor.appWhite,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: Size(
                    size.width * 0.90,
                    size.height * 0.08,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MyTextField extends StatelessWidget {
  const _MyTextField({
    Key? key,
    this.hint,
    this.obscureIcon,
    this.controller,
    this.height,
    this.width,
  }) : super(key: key);
  final String? hint;
  final Widget? obscureIcon;
  final TextEditingController? controller;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        style: const TextStyle(
          fontSize: 16,
          color: AppColor.appGrey,
        ),
        decoration: InputDecoration(
          labelText: hint,
          labelStyle: const TextStyle(
            fontSize: 16,
            color: AppColor.appGrey,
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(1),
            child: obscureIcon,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColor.appGrey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColor.appGrey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColor.appGrey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColor.appGrey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColor.appGrey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: AppColor.appGrey,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
