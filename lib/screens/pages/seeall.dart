import 'package:flutter/material.dart';
import 'package:recipe_app/model/recipe_model.dart';
import 'package:recipe_app/screens/pages/detail.dart';
import 'package:recipe_app/widgets/backgroundimage.dart';

class SeeAll extends StatelessWidget {
  
  final String name;
  final List<Recipe> recipeList;

  const SeeAll({Key key,
    @required this.name,
    @required this.recipeList})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(image: "assets/images/plates.jpg"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(name),
          ),
          body: Container(
            padding: EdgeInsets.all(8.0),
            child: OrientationBuilder(
    builder: (BuildContext context, Orientation orientation) {
      return GridView.builder(
        itemCount: recipeList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (orientation == Orientation.portrait) ? 2:3,
          childAspectRatio: (orientation == Orientation.portrait)
              ? MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1)
              : MediaQuery.of(context).size.width /900.0,
        ),
      itemBuilder: (BuildContext context, int index){
          Recipe recipe = recipeList[index];
          return Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15,),
                GestureDetector(
                  onTap:  () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Detail(recipe: recipe)));
                  },
                  child: Container(
                    height: 175,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage(
                          recipe.image
                        ),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Text(
                  recipe.title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
  
                Text("Recipe By:" + recipe.chef.toString(),
                  style: TextStyle(color: Colors.white),
                ),
                Text("Category By:" + recipe.category.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          );
      },
      );
    }
    ),
          )
        )
      ],
    );
  }
}
