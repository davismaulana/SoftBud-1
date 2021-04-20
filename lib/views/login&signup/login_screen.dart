import 'package:ecommerce/themes/const.dart';
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
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    icon: Icon(
                      CupertinoIcons.lock,
                      color: kPrimaryColor,
                    ),
                    hintText: "PASSWORD",
                    suffixIcon: InkWell(
                      onTap: _toggle,
                      child: Icon(
                        CupertinoIcons.eye,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 40,
                      child: Container(
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            splashColor: Colors.amber,
                            onTap: () {},
                            child: Center(
                              child: Text(
                                "SIGN IN",
                                style: TextStyle(
                                    color: kPrimaryLightColor,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      mini: true,
                      elevation: 0,
                      child: Image(
                        image: AssetImage("assets/images/gumgel.png"),
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      mini: true,
                      elevation: 0,
                      child: Image(
                        image: AssetImage("assets/images/Facebook.png"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
