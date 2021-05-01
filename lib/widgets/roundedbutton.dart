import 'package:flutter/material.dart';
import 'file:///D:/Officework/loginexample/lib/utils/pallete.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    @required this.buttonName, this.onPressed,
  }) : super(key: key);
  
  final String buttonName;
  final Function onPressed;
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(16), color: kBlue),
      child: FlatButton(
          onPressed: onPressed,
          child: Text(
            buttonName,
            style: kBodyText.copyWith(fontWeight: FontWeight.bold),
          )),
    );
  }
}
