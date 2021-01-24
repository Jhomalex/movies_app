import 'package:flutter/material.dart';
import 'package:movies_app/components/genere_card.dart';
import 'package:movies_app/constants.dart';

class Generes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> generes = [
      "Action",
      "Crime",
      "Comedy",
      "Drama",
      "Horror",
      "Animation"
    ];
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: generes.length,
        itemBuilder: (context, index) => GenereCard(genere: generes[index]),
      ),
    );
  }
}
