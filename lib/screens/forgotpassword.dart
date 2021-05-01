import 'package:flutter/material.dart';
import 'package:recipe_app/utils/pallete.dart';
import 'package:recipe_app/widgets/widgets.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return Stack(
      children: [
        BackgroundImage(image: "assets/images/tomahawk_steak.jpg"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_ios,
                color: kWhite,
              ),
            ),
            title: Text(
              "Forgot Password",
              style: kBodyText,
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(height: size.height* 0.1,),
                    Container(
                      width: size.width * 0.8,
                      child: Text(
                        "Enter your email we will send instruction to reset your Password",
                        style: kBodyText,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextInputField(
                      icon: Icons.email,
                      hint: "Email",
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.done,),
                    SizedBox(
                      height: 20,
                    ),
                    RoundedButton(buttonName: "Send")
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
