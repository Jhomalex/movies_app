import 'package:flutter/material.dart';
import 'package:movies_app/components/genere_card.dart';
import 'package:movies_app/constants.dart';
import 'package:movies_app/models/movie.dart';

class Generes extends StatelessWidget {
  const Generes({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genra.length,
          itemBuilder: (context, index) => GenereCard(
            genere: movie.genra[index],
          ),
        ),
      ),
    );
  }
}
