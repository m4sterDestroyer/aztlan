import 'package:flutter/material.dart';

class Slide {
  final String image, title, description;

  Slide(
      {@required this.image, @required this.title, @required this.description});
}

final SlideList = [
  Slide(
      image: 'images/man.png',
      title: 'Prompt customer care services',
      description:
          'Through our services we provide you with the best experience for your professional work.'),
  Slide(
      image: 'images/oneonone.png',
      title: 'Amazing 1 on 1s',
      description:
          'Through our services we provide you with the best experience for your professional work.'),
  Slide(
      image: 'images/work.png',
      title: 'Service on demand',
      description:
          'Through our services we provide you with the best experience for your professional work.'),
  Slide(
      image: 'images/calendar.png',
      title: 'Prompt customer care services',
      description:
          'Through our services we provide you with the best experience for your professional work.'),
];
