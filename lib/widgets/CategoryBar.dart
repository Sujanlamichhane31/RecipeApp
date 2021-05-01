import 'package:flutter/material.dart';
import 'package:recipe_app/utils/app_theme.dart';
class CategoryBar extends StatelessWidget {
  
  final Function onTap;
  final Icon icon;
  final String name;

  const CategoryBar({Key key,
    @required this.onTap,
    @required this.icon,
    @required this.name})
      : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:
      Container(
        
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [kBoxShadow],
        ),
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            SizedBox(
              height: 32,
              width: 32,
              child: icon,
            ),
    
            SizedBox(
              width: 5,
            ),
    
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
