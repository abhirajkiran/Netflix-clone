import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/presentation/home/widgets/custom_button_widget.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity
          ,
          height: 500,
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(kMainImage))),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButtonWidget(title: "My List", icon: Icons.add),
              _PlayButton(),
              CustomButtonWidget(icon: Icons.info, title: "Info")
            ],
          ),
        )
      ],
    );

    // ignore: dead_code
  }

  TextButton _PlayButton() {
    return TextButton.icon(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kwhiteColor)),
        icon: const Icon(
          Icons.play_arrow,
          size: 25,
          color: kBlackColor,
        ),
        label: const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Play",
            style: TextStyle(
              fontSize: 20,
              color: kBlackColor,
            ),
          ),
        ));
  }
}
