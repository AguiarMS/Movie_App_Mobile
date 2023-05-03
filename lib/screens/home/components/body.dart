import 'package:flutter/material.dart';
import 'package:move_app/constantes.dart';
import 'package:move_app/screens/home/components/genres.dart';

import 'categories.dart';
import 'movie_carousel.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const <Widget>[
          Categorylist(),
          Genres(),
          SizedBox(
            height: kDefaultPadding,
          ),
          MovieCarousel(),
        ],
      ),
    );
  }
}
