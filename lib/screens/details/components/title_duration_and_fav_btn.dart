import 'package:flutter/material.dart';
import 'package:move_app/constantes.dart';
import 'package:move_app/models/movie.dart';

class TitleDurationAndFabBtn extends StatelessWidget {
  const TitleDurationAndFabBtn({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: kDefaultPadding / 2),
                Row(
                  children: [
                    Text(
                      '${movie.year}',
                      style: const TextStyle(color: kTextLigthColor),
                    ),
                    const SizedBox(width: kDefaultPadding / 2),
                    const Text(
                      'PG-13',
                      style: TextStyle(color: kTextLigthColor),
                    ),
                    const SizedBox(width: kDefaultPadding / 2),
                    const Text(
                      '1h 21min',
                      style: TextStyle(color: kTextLigthColor),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 64,
            width: 64,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: kSecondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: const Icon(
                Icons.add,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
