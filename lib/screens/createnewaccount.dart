import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recipe_app/utils/pallete.dart';
import 'package:recipe_app/widgets/widgets.dart';


class CreateNewAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(image: "assets/eggwithgrapes.png"),
        Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
                onTap: ()=>Navigator.pop(context),child: Icon(Icons.arrow_back_ios)),
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(height: size.width*0.15,),
                  Text(
                    "Register,",
                    style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Create new account to get started.",
                    style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),
                  ),
                
                  SizedBox(
                    height: size.width *0.1,
                  ),
                  
                  Column(
                    children: [
                      TextInputField(
                        icon: FontAwesomeIcons.user, hint: "User",
                        inputType: TextInputType.name,
                        inputAction: TextInputAction.next,),
                      TextInputField(
                        icon: Icons.email, hint: "email",
                        inputType: TextInputType.emailAddress,
                        inputAction: TextInputAction.next,),
                      PasswordInputField(
                        icon: Icons.lock,
                        hint: "Password",
                        inputType: TextInputType.visiblePassword,
                        inputAction: TextInputAction.next,
                      ),
                      PasswordInputField(
                        icon: Icons.lock,
                        hint: "Confirm Password",
                        inputType: TextInputType.visiblePassword,
                        inputAction: TextInputAction.done,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      RoundedButton(buttonName: "Register"),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?",
                            style: kBodyText,),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, "/");
                            },
                            child: Text("Login",style: kBodyText.copyWith(
                                color: kBlue,
                                fontWeight: FontWeight.bold
                            ),),
                          )
                        
                        ],
                      ),
                      SizedBox(height: 20,)
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
