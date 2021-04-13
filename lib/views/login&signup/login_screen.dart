import 'package:ecommerce/themes/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:nice_button/NiceButton.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;

  String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "",
            style: TextStyle(
              color: kPrimaryLightColor,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              ),
              SvgPicture.asset(
                "assets/icons/Hiking.svg",
                height: size.height * 0.35,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Kosong Goblok"),
                    EmailValidator(errorText: "Seng Genah Iki Form Email"),
                  ]),
                  decoration: InputDecoration(
                    icon: Icon(
                      CupertinoIcons.person_crop_square,
                      color: kPrimaryColor,
                    ),
                    hintText: "EMAIL",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(
                      CupertinoIcons.lock,
                      color: kPrimaryColor,
                    ),
                    hintText: "PASSWORD",
                  ),
                ),
              ),
              NiceButton(
                width: 255,
                elevation: 8.0,
                radius: 52.0,
                text: "Login",
                background: kPrimaryColor,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
