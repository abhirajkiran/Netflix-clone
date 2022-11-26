import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black.withOpacity(0.5 ),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.volume_off))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://www.themoviedb.org/t/p/w600_and_h900_bestv2/mVhQd5ZiAcUJfFWPJRZW4Mliyur.jpg"),
                      ),
                    ),
                    VideoActionWidgeet(
                        icon: Icons.emoji_emotions, title: 'LOL'),
                    VideoActionWidgeet(icon: Icons.add, title: 'My List'),
                    VideoActionWidgeet(icon: Icons.share, title: 'Share'),
                    VideoActionWidgeet(icon: Icons.play_arrow, title: 'Play')
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionWidgeet extends StatelessWidget {
  final IconData icon;
  final String title;

  const VideoActionWidgeet({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:10 ,horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon, 
            color: kwhiteColor,
            size: 30,
          ),
          Text(
            title,
            style: TextStyle(color: kwhiteColor, fontSize: 16),
          )
        ],
      ),
    );
  }
}
