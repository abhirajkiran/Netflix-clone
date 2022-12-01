import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';

import '../../core/colors/colors.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:150,
      height:250,
      //color: kBlueColor,
      decoration:  BoxDecoration(
         borderRadius: kRadius20,
          image: DecorationImage(
              image: NetworkImage(
                  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/mVhQd5ZiAcUJfFWPJRZW4Mliyur.jpg"))),
    );
  }
}