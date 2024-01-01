import "package:flutter/material.dart";
import "package:wisatabandung/detail_screen.dart";
import "package:wisatabandung/model/tourism_place.dart";

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Bandung'),
      ),
      body: ListView.builder(
        itemCount: tourismPlaceList.length,
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: Card(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Hero(
                          tag: place.name,
                          child: Image.asset(place.imageAsset)
                        )
                      ),
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    place.name,
                                    style: const TextStyle(fontSize: 16.0),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(place.location)
                                ]
                            )
                        ),
                      )
                    ]
                )
            ),
          );
        },
      ),
    );
  }
}