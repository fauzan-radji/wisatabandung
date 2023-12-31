import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                'Farm House Lembang',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                )
              )
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8.0),
                      Text('Open Everyday')
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.access_time),
                      SizedBox(height: 8.0),
                      Text('09:00 - 20:00')
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.monetization_on),
                      SizedBox(height: 8.0),
                      Text('Rp. 25.000')
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
          ]
        ),
      ),
    );
  }
}