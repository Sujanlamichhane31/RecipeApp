import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recipe_app/model/recipe_model.dart';
import 'package:recipe_app/screens/pages/detail.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(
          FontAwesomeIcons.solidTimesCircle,
          color: Colors.white60,
          size: 18,
        ),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back,
        size: 30.0,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  Widget buildResults(BuildContext context) {
    List<Recipe> recipeList= getRecipes();
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          final results= recipeList.where((element) => element.title.contains(query)).toList();
          return ListView(
            children: results.map<ListTile>((e) =>
                ListTile(
                  leading: Image.asset(e.image),
                  title: Text(e.title),
                )).toList(),
          );
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Recipe> recipeList= getRecipes();
    final suggestionList = recipeList.where((element) =>
        element.title.toLowerCase().contains(query)).toList();
    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context,index){
          Recipe recipe= recipeList[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail(recipe: recipe)));
              },
                leading: Image.asset(suggestionList[index].image),
              title: RichText(
                  text: TextSpan(
                      text: suggestionList[index].title.substring(
                          0, query.length),
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                            text: suggestionList[index].title.substring(
                                query.length),
                            style: TextStyle(color: Colors.grey)
                        )
                      ]
                  )
              )
            ),
          );
        });
  }
}
