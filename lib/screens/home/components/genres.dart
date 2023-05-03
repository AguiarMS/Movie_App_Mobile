import 'package:flutter/cupertino.dart';
import 'package:move_app/models/movie.dart';

import '../../../constantes.dart';
import '../../../components/genre_card.dart';

class Genres extends StatelessWidget {
  const Genres({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      "Action",
      "Crime",
      "Comedy",
      "Drama",
      "Horror",
      "Animation",
    ];

    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: (context, index) => GenderCard(
                genre: genres[index],
              )),
    );
  }
}
