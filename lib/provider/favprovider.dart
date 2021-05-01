import 'package:flutter/cupertino.dart';
import 'package:recipe_app/model/recipe_model.dart';

class FavouriteProvider with ChangeNotifier{
  List<Recipe> _recipeList = [];
  
  List<Recipe> get recipeList => _recipeList;
  
  addcartList(Recipe newrecipeItem) {
    _recipeList.add(newrecipeItem);
    notifyListeners();
  }
  
  removeCartItem(Recipe recipe) {
    _recipeList.remove(recipe);
    notifyListeners();
  }
}