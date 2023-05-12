import 'package:flutter/material.dart';
import 'package:move_app/models/movie.dart';
import 'package:move_app/screens/account/components/body.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyAccount(movie: movie),
    );
  }
}
