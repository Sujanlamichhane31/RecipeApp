import 'package:flutter/material.dart';
import 'package:recipe_app/model/recipe_model.dart';
import 'package:recipe_app/screens/pages/detail.dart';
import 'package:recipe_app/screens/pages/seeall.dart';

class RecipeCarousal extends StatelessWidget {
  const RecipeCarousal({
    Key key,
    @required List<Recipe> recipes,
  }) :  _recipes = recipes, super(key: key);
  
  final List<Recipe> _recipes;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "Menu",
            style: TextStyle(
                fontSize:18,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "See all the Recipes",
                style: TextStyle(color: Colors.white),
              ),
              GestureDetector(
                onTap:  () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SeeAll(recipeList: _recipes,name: "See All",)));
                },
                child: Text(
                  'View all',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: 250.0,
          child: Container(
              height: 250.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: _recipes.length,
                  itemBuilder: (context, index) {
                    Recipe recipe= _recipes[index];
                    return RecipeContainer(recipe: recipe);
                  })),
        )
      ],
    );
  }
}

class RecipeContainer extends StatelessWidget {
  const RecipeContainer({
    Key key,
    @required this.recipe,
  }) : super(key: key);
  
  final Recipe recipe;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (_) => Detail(recipe: recipe)));
      },
      child: Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Container(
          width: 205,
          decoration: BoxDecoration(
            borderRadius:
            BorderRadius.circular(12.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment
                .start,
            children: [
              Container(
                child: Stack(
                  children: [
                    Hero(
                      tag: recipe.image,
                      child: Container(
                        height: 175,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius
                                .circular(18.0),
                            image: DecorationImage(
                              image: AssetImage(recipe.image),
                              fit: BoxFit.fill,
                            )
                        ),
                      ),
                    ),
                  
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Positioned(
                bottom: 5,
                left: 5,
                child: Center(
                  child: Text(
                    recipe.title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18),                ),
                ),
              ),
              Positioned(
                bottom: 5,
                left: 5,
                child: Center(
                  child: Text("Recipe By:"+
                    recipe.chef,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white),                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
