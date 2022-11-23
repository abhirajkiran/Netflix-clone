import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key,required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
        style: TextStyle( fontSize: 30,fontWeight: FontWeight.w900),

        ),
        Spacer(),
        Icon(Icons.cast,color: Colors.white,),
        kwidth,
        Container( height: 30,width: 30 ,color: Colors.blue,),
        kwidth
      ],
    );
  } 
} 