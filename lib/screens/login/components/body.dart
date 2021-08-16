import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loginpage/screens/SignUp/signup_screen.dart';
import 'package:loginpage/screens/login/components/already_have_an_account_check.dart';

import 'package:loginpage/screens/login/components/background.dart';
import 'package:loginpage/screens/login/components/rounded_input_field.dart';
import 'package:loginpage/screens/login/components/rounded_password_field.dart';
import 'package:loginpage/screens/welcome/components/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              icon: Icons.person,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              hintText: "Password",
              icon: Icons.lock,
              onchanged: (value) {},
            ),
            // RoundedInputField(
            //   hintText: "Password",
            //   icon: Icons.lock,
            //   onChanged: (value) {},
            // ),
            RoundedButton(text: "Login", press: () {}),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
