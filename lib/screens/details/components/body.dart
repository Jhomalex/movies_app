import 'package:flutter/material.dart';
import 'package:movies_app/constants.dart';
import 'package:movies_app/models/movie.dart';
import 'package:movies_app/screens/details/components/cast_and_crew.dart';
import 'package:movies_app/screens/details/components/title_duration_fab_btn.dart';

import 'backdrop_rating.dart';
import 'generes.dart';

class Body extends StatelessWidget {
  final Movie movie;
  const Body({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackdropAndRating(size: size, movie: movie),
          SizedBox(height: kDefaultPadding / 2),
          TitleDurationFbBtn(movie: movie),
          Generes(movie: movie),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              movie.plot,
              style: TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
          CastAndCrew(casts: movie.cast),
        ],
      ),
    );
  }
}
