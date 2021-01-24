import 'package:flutter/material.dart';
import 'package:movies_app/constants.dart';
import 'categories.dart';
import 'generes.dart';
import 'movie_carousel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CategorylistState(),
          Generes(),
          SizedBox(
            height: kDefaultPadding,
          ),
          MovieCarousel(),
        ],
      ),
    );
  }
}
