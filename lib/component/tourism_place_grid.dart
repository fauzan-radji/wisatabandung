import 'package:flutter/material.dart';
import 'package:wisatabandung/component/tourism_place_card.dart';
import 'package:wisatabandung/model/tourism_place.dart';

class TourismPlaceGrid extends StatelessWidget {
  final int count;

  const TourismPlaceGrid({Key? key, this.count = 2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: count,
      children: tourismPlaceList.map((place) => TourismPlaceCard(place: place)).toList()
    );
  }
}