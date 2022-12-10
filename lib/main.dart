import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Caraousel Stack"),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 400,
              width: 300,
              child: CarouselSlider(
                  items: [
                    ClipRRect(
                        child: Image(
                      image: NetworkImage(
                          "https://imgd.aeplcdn.com/370x208/n/cw/ec/131879/bmw-s1000rr-right-front-three-quarter0-2.jpeg?isig=0&q=75"),
                      fit: BoxFit.cover,
                    )),
                    ClipRRect(
                        child: Image(
                      image: NetworkImage(
                          "https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2021%2F06%2Fbrabus-900-rocket-edition-mercedes-amg-g63-g-wagon-tuned-custom-900hp-power-speed-0.jpg?w=960&cbr=1&q=90&fit=max"),
                      fit: BoxFit.cover,
                    ))
                  ],
                  options: CarouselOptions(
                      height: 400,
                      aspectRatio: 16 / 9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal)),
            ),
            CarouselSlider(
                items: [
                  Text(
                    "s1000rr",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                  Text(
                    "Gwagon",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  )
                ],
                options: CarouselOptions(
                    height: 100,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal)),
          ],
        ),
      ),
    );
  }
}
