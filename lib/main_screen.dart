import "package:flutter/material.dart";

import "component/tourism_place_grid.dart";
import "component/tourism_place_list.dart";

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Bandung'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const TourismPlaceList();
          } else if (constraints.maxWidth <= 700) {
            return const TourismPlaceGrid(count: 2);
          } else if (constraints.maxWidth <= 800) {
            return const TourismPlaceGrid(count: 3);
          } else if (constraints.maxWidth <= 1200) {
            return const TourismPlaceGrid(count: 4);
          } else {
            return const TourismPlaceGrid(count: 6);
          }
        },
      )
    );
  }
}
