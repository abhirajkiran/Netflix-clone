import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 150,
            ),
            Container(
              width: 150,
              height: 250,
              //color: kBlueColor,
              decoration: BoxDecoration(
                  borderRadius: kRadius20,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/v28T5F1IygM8vXWZIycfNEm3xcL.jpg"))),
            ),
          ],
        ),
        Positioned(
          left:10,
          bottom: 10,
            child: BorderedText(
              strokeWidth: 10,
              child: Text(
                      "${index+1}",
                      style: TextStyle(fontSize:120,decoration: TextDecoration.none,decorationColor: Colors.black),
                    ),
            )),
      ],
    );
  }
}
