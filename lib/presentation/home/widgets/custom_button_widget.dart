import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    Key? key, required this.icon, required this.title,
  }) : super(key: key);
  final IconData icon;
  final String title;



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kwhiteColor,
          size:25,
        ),
        Text(title,
        style: TextStyle(
          fontSize:18,
          fontWeight: FontWeight.bold
        ),
        )
      ],
    );
  }
}
