import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Buttons',
    subTitle: 'Different types of buttons',
    link: '/buttons',
    icon: Icons.smart_button,
  ),
  MenuItem(
    title: 'Card',
    subTitle: 'Different types of cards',
    link: '/cards',
    icon: Icons.card_giftcard,
  ),
    MenuItem(
    title: 'ProgressIndicator',
    subTitle: 'Collection of progress indicators',
    link: '/progress',
    icon: Icons.refresh,
  ),
];
