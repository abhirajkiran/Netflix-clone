import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/title.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/mVhQd5ZiAcUJfFWPJRZW4Mliyur.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: 'Movies & TV'),
        kHeight,
        Expanded(
            child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 1 / 1.4,
                children: List.generate(20, (index) {
                  return MainCard();
                })))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const  MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 150,
        height: 250,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/mVhQd5ZiAcUJfFWPJRZW4Mliyur.jpg"),
                fit: BoxFit.cover
                ),
            borderRadius: BorderRadius.circular(7)),
      ),
    );
  }
}
