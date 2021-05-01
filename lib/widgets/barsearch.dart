import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/customsearchdelegate.dart';
class BarSearch extends StatelessWidget {
  const BarSearch({
    Key key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15.0, left: 15),
      padding: EdgeInsets.only(left: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.transparent,
      ),
      child: TextField(
        onTap: () {
          showSearch(
            context: context,
            delegate: CustomSearchDelegate(),
          );
          FocusScope.of(context).unfocus();
          TextEditingController().clear();
        },
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(5.0),
            // border: InputBorder.none,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(20.0),
            ),
            enabledBorder:  OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(20.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(20.0),
            ),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.white,
              size: 25,
            ),
            hintText: 'Search',
        hintStyle: TextStyle(
          color: Colors.white
        )),
      ),
    );
  }
}
