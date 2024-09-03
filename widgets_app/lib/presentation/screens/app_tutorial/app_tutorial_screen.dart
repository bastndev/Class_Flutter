import 'package:flutter/material.dart';

class SliderInfo {
  final String title;
  final String caption;
  final String imgUrl;

  SliderInfo({
    required this.title,
    required this.caption,
    required this.imgUrl,
  });
}

final slides = <SliderInfo>[
  SliderInfo(
      title: 'Search food',
      caption: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      imgUrl: 'assets/images/1.png'),
  SliderInfo(
      title: 'Fast delivery',
      caption:
          'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      imgUrl: 'assets/images/2.png'),
  SliderInfo(
      title: 'Enjoy the food',
      caption:
          'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      imgUrl: 'assets/images/3.png'),
];

class AppTutorialScreen extends StatelessWidget {
  static const name = 'app_tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides
            .map((slideData) => _Slide(
                  title: slideData.title,
                  caption: slideData.caption,
                  imgUrl: slideData.imgUrl,
                ))
            .toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imgUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
