import "package:flutter/material.dart";

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset('images/farm-house.jpg'),
                Container(
                    margin: const EdgeInsets.only(top: 16.0),
                    child: const Text(
                        'Farm House Lembang',
                        textAlign: TextAlign.center,
                        style: TextStyle(
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
                                'Open Everyday',
                                style: informationTextStyle,
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            const Icon(Icons.access_time),
                            const SizedBox(height: 8.0),
                            Text(
                              '09:00 - 20:00',
                              style: informationTextStyle,
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            const Icon(Icons.monetization_on),
                            const SizedBox(height: 8.0),
                            Text(
                              'Rp. 25.000',
                              style: informationTextStyle,
                            )
                          ],
                        )
                      ],
                    )
                ),
                Container(
                    padding: const EdgeInsets.all(16.0),
                    child: const Text(
                        'Berada di ketinggian 1.300 meter di atas permukaan laut membuat Farm House Lembang memiliki udara yang sejuk dan pemandangan yang indah. Di sini kamu bisa menikmati keindahan alam sambil berfoto ria dengan berbagai spot foto yang tersedia. Selain itu, kamu juga bisa berinteraksi dengan berbagai hewan ternak yang ada di sini, seperti kambing, kelinci, dan sapi. Jangan lupa untuk mencoba susu murni yang dihasilkan dari peternakan sapi di sini ya!',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16.0)
                    )
                ),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network('https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg')
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network('https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg')
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network('https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg')
                        ),
                      ),
                    ],
                  ),
                )
              ]
          ),
        ),
      ),
    );
  }
}