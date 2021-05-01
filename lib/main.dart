import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/provider/favprovider.dart';
import 'package:recipe_app/screens/createnewaccount.dart';
import 'package:recipe_app/screens/forgotpassword.dart';
import 'package:recipe_app/screens/loginpage.dart';
import 'package:recipe_app/screens/pages/favourite.dart';
import 'package:recipe_app/screens/pages/homepage.dart';
import 'package:recipe_app/utils/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
            value: FavouriteProvider()
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: MyTheme.kPrimaryColor,
          accentColor: MyTheme.kAccentColor,
          textTheme:
          GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
  
        initialRoute: "/",
        routes: {
          "/": (context) => LoginPage(),
          "/ForgotPassword": (context) => ForgotPassword(),
          "/CreateNewAccount": (context) => CreateNewAccount(),
          "homepage": (context) => HomePage(),
          "favourite":(context)=> Favourite(),
        },
      ),
    );
  }
}
