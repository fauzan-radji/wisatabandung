import "package:flutter/material.dart";
import "package:wisatabandung/component/detail_desktop_page.dart";
import "package:wisatabandung/component/detail_mobile_page.dart";
import "package:wisatabandung/model/tourism_place.dart";

class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  const DetailScreen({required this.place, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > 800) {
              return DetailDesktopPage(place: place);
            } else {
              return DetailMobilePage(place: place);
            }
          }
        )
      ),
    );
  }
}