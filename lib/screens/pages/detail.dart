import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/model/recipe_model.dart';
import 'package:recipe_app/provider/favprovider.dart';
import 'package:recipe_app/widgets/backgroundimage.dart';

class Detail extends StatelessWidget {
  final Recipe recipe;

  const Detail({Key key, @required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider= Provider.of<FavouriteProvider>(context);
   int _i=1;
   double width=MediaQuery.of(context).size.width*0.8;
    return Stack(
      children: [
        BackgroundImage(
          image: recipe.image,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            brightness: Brightness.light,
            elevation: 0,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 16),
                child: GestureDetector(
                  onTap: (){
                  if(provider.recipeList.contains(recipe)){
                    provider.removeCartItem(recipe);
                  }else{
                    provider.addcartList(recipe);
  
                  }
                  },
                  child: provider.recipeList.contains(recipe)?Icon(
                           Icons.favorite,
                           color: Colors.white,
                     ):Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  InfoTitle(recipe: recipe),
                  
                  SizedBox(height: 16,),
                  
                  Text("Ingridents", style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                  
                  SizedBox(height: 10.0,),
                  
                  IngridentContainer(recipe: recipe),
                  SizedBox(height: 10.0,),
  
                  Text("Steps", style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                  
                  SizedBox(height: 10.0,),
                  
                  Container(
                    width: width,
                    child: Column(
                      children: recipe.steps.map((e) => Column(
                        children: [
                          SizedBox(height: 5.0,),
  
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text("Steps: ${_i++}",style: TextStyle(fontSize:18,color: Colors.white,fontWeight: FontWeight.bold),)),
                          SizedBox(height: 5.0,),
                          Row(
                            children: [
                              SizedBox(width: 5.0,),
                              Flexible(child: Text(e,style: TextStyle(color: Colors.white),))
                            ],
                          )
                        ],
                      )).toList(),
                    ),
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

class InfoTitle extends StatelessWidget {
  const InfoTitle({
    Key key,
    @required this.recipe,
  }) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Flexible(
              child: Text(
                recipe.title,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            )
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              "Recipe By: Chef "+recipe.chef,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              recipe.description,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
                color: Colors.grey[400],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IngridentContainer extends StatelessWidget {
  const IngridentContainer({
    Key key,
    @required this.recipe,
  }) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(8.0),
              scrollDirection: Axis.vertical,
              children:
                recipe.ingridents.map((e) => Text("-" +e,style: TextStyle(color: Colors.white,fontSize: 18),)).toList()

            ),
          ),
          Expanded(
            child: Hero(
              tag: recipe.image,
              child: Container(
                height: 250,
                width: 240,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(recipe.image),
                        fit: BoxFit.fitHeight
                    )
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
