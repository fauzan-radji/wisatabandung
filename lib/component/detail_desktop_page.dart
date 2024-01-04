import 'package:flutter/material.dart';
import 'package:wisatabandung/component/favorite_button.dart';
import 'package:wisatabandung/model/tourism_place.dart';
import 'package:wisatabandung/style/information_text_style.dart';

class DetailDesktopPage extends StatefulWidget {
  final TourismPlace place;

  const DetailDesktopPage({Key? key, required this.place}) : super(key: key);

  @override
  State<DetailDesktopPage> createState() => _DetailDesktopPageState();
}

class _DetailDesktopPageState extends State<DetailDesktopPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 64,
        vertical: 16
      ),
      child: Center(child: SizedBox(
        width: 1200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Wisata Bandung",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 32.0,
                fontFamily: 'Staatliches',
              )
            ),
            const SizedBox(height: 32),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(child: Column(
                  children: [
                    Hero(
                      tag: widget.place.name,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(widget.place.imageAsset),
                      )
                    ),
                    Scrollbar(
                      controller: _scrollController,
                      child: Container(
                        height: 150,
                        padding: const EdgeInsets.only(bottom: 16),
                        child: ListView(
                          controller: _scrollController,
                          scrollDirection: Axis.horizontal,
                          children: widget.place.imageUrls.map((url) {
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(url),
                              ),
                            );
                          }).toList(),
                        ),
                      )
                    ),
                  ],
                )),
                const SizedBox(width: 32),
                Expanded(child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          widget.place.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'Staatliches',
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: <Widget>[
                                const Icon(Icons.calendar_today),
                                const SizedBox(width: 8.0),
                                Text(
                                  widget.place.openDays,
                                  style: informationTextStyle,
                                ),
                              ],
                            ),
                            const FavoriteButton(),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            const Icon(Icons.access_time),
                            const SizedBox(width: 8.0),
                            Text(
                              widget.place.openTime,
                              style: informationTextStyle,
                            ),
                          ],
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          children: <Widget>[
                            const Icon(Icons.monetization_on),
                            const SizedBox(width: 8.0),
                            Text(
                              widget.place.ticketPrice,
                              style: informationTextStyle,
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Text(
                            widget.place.description,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Oxygen',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
              ],
            )
          ]
        ),
      )),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}