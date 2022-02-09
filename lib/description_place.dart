import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int starts;
  String descriptionPace;

  DescriptionPlace(this.namePlace, this.starts, this.descriptionPace, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final start = Container(
      margin: const EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2c611),
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            left: 30.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            start,
            start,
            start,
            start,
            start,
          ],
        )
      ],
    );

    final textDescription = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 30.0,
        right: 60
      ),
      child: Text(
        descriptionPace,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color(0XFF56575a)
        ),
        textAlign: TextAlign.left
      ),
    );

    return Column(
      children: <Widget>[
        titleStars,
        textDescription,
      ],
    );
  }
}