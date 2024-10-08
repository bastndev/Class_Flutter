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
    title: 'Theme Changer',
    subTitle: 'Change the theme of the app',
    link: '/theme-changer',
    icon: Icons.image,
  ),
  MenuItem(
    title: 'Counter Screen',
    subTitle: 'Counter Screen with Riverpod',
    link: '/counter',
    icon: Icons.add,
  ),
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
  MenuItem(
    title: 'Snackbar',
    subTitle: 'Different types of snackBars',
    link: '/snackbar',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated Container',
    subTitle: 'Best animater Container',
    link: '/container',
    icon: Icons.check_box_outline_blank,
  ),
  MenuItem(
    title: 'UI Controls',
    subTitle: 'Different types of UI Controls',
    link: '/UIControls',
    icon: Icons.attractions_outlined,
  ),
  MenuItem(
    title: 'tutorial',
    subTitle: 'App Tutorial',
    link: '/tutorial',
    icon: Icons.turned_in_not_outlined,
  ),
  MenuItem(
    title: 'Infinite',
    subTitle: 'Infinite scroll',
    link: '/infinite',
    icon: Icons.loop,
  ),
];
