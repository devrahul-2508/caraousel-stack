import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          child: ClipRRect(
              child: Image(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          )),
        ),
        Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 20),
        )
      ],
    );
  }
}
