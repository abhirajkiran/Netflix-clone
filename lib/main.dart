import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/main_page/widgets/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor:backgroundColor,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        backgroundColor: Colors.black,
        textTheme:const TextTheme(
          bodyText1: TextStyle(
            color: Colors.white
          ),
           bodyText2: TextStyle(
            color: Colors.white
          ),

        )
      ),
      home:  ScreenMainPage(),
    );
  }
}


