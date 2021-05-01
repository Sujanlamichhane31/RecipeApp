import 'package:flutter/material.dart';
import 'package:recipe_app/utils/app_theme.dart';

class IngridentBar extends StatelessWidget {
 final String ingridents;

  const IngridentBar({Key key, this.ingridents}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: ingridents.length,
          itemBuilder: (context, index) {
            return Container(
                padding: EdgeInsets.only(left: 5.0,right: 5.0),
                child: Row(
                  children: [
                    GestureDetector(
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
                        child: Wrap(
                          children: [
                            Text(
                              ingridents[index],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
            );
          }),
    );
  }
}
