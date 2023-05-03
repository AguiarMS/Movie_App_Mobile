import 'package:flutter/material.dart';
import 'package:move_app/components/genre_card.dart';
import 'package:move_app/constantes.dart';
import 'package:move_app/models/movie.dart';

class Genres extends StatelessWidget {
  const Genres({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genra.length,
          itemBuilder: (context, index) =>
              GenderCard(genre: movie.genra[index]),
        ),
      ),
    );
  }
}
