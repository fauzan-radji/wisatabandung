import 'package:flutter/material.dart';
import 'package:wisatabandung/model/tourism_place.dart';

import '../detail_screen.dart';

class TourismPlaceCard extends StatelessWidget {
  final TourismPlace place;

  const TourismPlaceCard({
    Key? key,
    required this.place
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => DetailScreen(place: place))
        );
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Hero(
                tag: place.name,
                child: Image.asset(
                  place.imageAsset,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                place.name,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
              child: Text(place.location)
            ),
          ],
        )
      )
    );
  }
}