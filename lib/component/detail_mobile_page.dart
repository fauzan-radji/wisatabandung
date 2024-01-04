import 'package:flutter/material.dart';
import 'package:wisatabandung/component/favorite_button.dart';
import 'package:wisatabandung/model/tourism_place.dart';
import 'package:wisatabandung/style/information_text_style.dart';

class DetailMobilePage extends StatelessWidget {
  final TourismPlace place;

  const DetailMobilePage({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Hero(
              tag: place.name,
              child: Image.asset(place.imageAsset)
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        onPressed: () {Navigator.pop(context);},
                        icon: const Icon(Icons.arrow_back),
                        color: Colors.white,
                      ),
                    ),
                    const FavoriteButton(),
                  ],
                ),
              ),
            ),
          ]
        ),
        Container(
          margin: const EdgeInsets.only(top: 16.0),
          child: Text(
            place.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Staatliches',
            )
          )
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const Icon(Icons.calendar_today),
                  const SizedBox(height: 8.0),
                  Text(
                    place.openDays,
                    style: informationTextStyle,
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  const Icon(Icons.access_time),
                  const SizedBox(height: 8.0),
                  Text(
                    place.openTime,
                    style: informationTextStyle,
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  const Icon(Icons.monetization_on),
                  const SizedBox(height: 8.0),
                  Text(
                    place.ticketPrice,
                    style: informationTextStyle,
                  )
                ],
              )
            ],
          )
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            place.description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16.0)
          )
        ),
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: place.imageUrls.map((url) => Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(url)
              ),
            )).toList()
          ),
        )
      ]
    );
  }
}