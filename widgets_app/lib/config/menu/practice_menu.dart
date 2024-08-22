import 'package:flutter/material.dart';

class MenuPractice {
  final String title;
  final String subTitle;
  final IconData icon;
  final ImageProvider image;

  const MenuPractice({
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.image,
  });
}

const appMenuPractice = <MenuPractice>[
  MenuPractice(
    title: 'Gohit',
    subTitle: 'Bastian',
    icon: Icons.arrow_forward_ios,
    image:
        NetworkImage('https://avatars.githubusercontent.com/u/113950039?v=4'),
  ),
];
