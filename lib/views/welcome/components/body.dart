import 'package:ecommerce/components/rounded_button.dart';
import 'package:ecommerce/themes/const.dart';
import 'package:ecommerce/views/login&signup/login_screen.dart';
import 'package:ecommerce/views/login&signup/signup.dart';
import 'package:ecommerce/views/welcome/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO SOFTBUD",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            SvgPicture.asset(
              "assets/icons/Ballons.svg",
              height: size.height * 0.5,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            RoundedButton(
                text: "SIGNUP",
                press: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Signup(),
                    ),
                  );
                }),
            RoundedButton(
              text: "LOGIN",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
