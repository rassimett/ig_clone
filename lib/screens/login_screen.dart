import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ig_clone/utilities/colors.dart';
import 'package:ig_clone/widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //svg logo
            Flexible(
              child: Container(),
              flex: 2,
            ),
            SvgPicture.asset(
              'assets/ic_instagram.svg',
              color: primaryColor,
              height: 64,
            ),
            const SizedBox(
              height: 64,
            ),
            //tf email
            TextFieldInput(
                textEditingController: _emailController,
                hintText: 'Enter your email ya chamoti',
                textInputType: TextInputType.emailAddress),
            SizedBox(
              height: 25,
            ),
            //tf pass
            TextFieldInput(
              textEditingController: _passwordController,
              hintText: 'Enter  your password',
              textInputType: TextInputType.text,
              isPass: true,
            ),
            SizedBox(
              height: 25,
            ),
            //button
            InkWell(
              child: Container(
                child: const Text('Login'),
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  color: blueColor,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Flexible(
              child: Container(),
              flex: 2,
            ),
            //sign up
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const Text("I don't have an account?"),
                  padding: EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
