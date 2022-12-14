import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/downloads/widgets/screen_downloads.dart';
import 'package:netflix_clone/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix_clone/presentation/home/screen_home.dart';
import 'package:netflix_clone/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_clone/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_clone/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  
   ScreenMainPage({Key? key}) : super(key: key);

   final _pages=[
     ScreenHome(),
     ScreenNewAndHot(),
     ScreenFastLaugh(),
     ScreenSearch(),
     ScreenDownloads()

   ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: indexChangeNotifier, builder: (context,int index,_){
          return _pages[index];
        }),
      ),
           bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
