import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'file:///D:/Officework/loginexample/lib/utils/pallete.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:recipe_app/widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showLoading = false;
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        BackgroundImage(
          image: "assets/eggsandwich.png",
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: ModalProgressHUD(
            inAsyncCall: showLoading,
            color: Colors.grey,
            offset: Offset(width * 0.45, height - 100.0),
            progressIndicator: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).primaryColor.withOpacity(0.5)),
            ),
            child: Column(
              children: [
                Flexible(
                    child: Center(
                      child: Text(
                        "Recipe Book",
                        style: TextStyle(color: Colors.white, fontSize: 55),
                      ),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextInputField(
                      icon: Icons.email,
                      hint: "Email",
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                    ),
                    PasswordInputField(
                      icon: Icons.lock,
                      hint: "Password",
                      inputType: TextInputType.visiblePassword,
                      inputAction: TextInputAction.done,
                    ),
                    GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, "/ForgotPassword"),
                      child: Text(
                        "Forgot Password",
                        style: kBodyText,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    RoundedButton(
                      onPressed: () {
                        setState(() {
                          showLoading=true;
                          print("okay");
                        });
                        Future.delayed(
                          const Duration(seconds: 5),
                              () {
                            setState(() {
                              showLoading = false;
                            });
                            Navigator.pushReplacementNamed(context, 'homepage');
                          },
                        );
                      },
                      buttonName: "Login",
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, "/CreateNewAccount"),
                  child: Container(
                    child: Text(
                      "Create New Account",
                      style: kBodyText,
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 1, color: kWhite))),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
