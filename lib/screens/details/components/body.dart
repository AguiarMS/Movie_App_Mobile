import 'package:flutter/material.dart';
import 'package:move_app/constantes.dart';
import 'package:move_app/models/movie.dart';
import 'package:move_app/screens/details/components/Genres.dart';

import 'backdrop_rating.dart';
import 'title_duration_and_fav_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        BackdropAndRating(size: size, movie: movie),
        const SizedBox(height: kDefaultPadding / 2),
        TitleDurationAndFabBtn(movie: movie),
        Genres(movie: movie),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
          child: Text(
            'Plot Summary',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            movie.Plot,
            style: const TextStyle(
              color: Color(0xFF737599),
            ),
          ),
        ),
      ],
    );
  }
}
