import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/home/home_screen.dart';

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
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((slideData) => _Slide(
                      title: slideData.title,
                      caption: slideData.caption,
                      imgUrl: slideData.imgUrl,
                    ))
                .toList(),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              onPressed: () => context.pop(),
              child: const Text('Skip'),
            ),
          )
        ],
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
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imgUrl)),
            const SizedBox(height: 20),
            Text(title, style: titleStyle),
            const SizedBox(height: 20),
            Text(
              caption,
              style: captionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
