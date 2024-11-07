import 'package:flutter/material.dart';
class Custom extends StatelessWidget {
  const Custom({super.key, required this.image ,required this.description ,  required this.title});

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return
    Column(children:
    [
      Image.network(image),
      Text(title,style: TextStyle(fontWeight: FontWeight.bold)),
      Text(description),
    ],
    );
  }
}
