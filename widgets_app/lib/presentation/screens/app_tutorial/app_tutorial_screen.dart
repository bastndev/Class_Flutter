import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

class AppTutorialScreen extends StatefulWidget {
  static const name = 'app_tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageVewController = PageController();
  bool endReacher = false;

  @override
  void initState() {
    super.initState();

    pageVewController.addListener(() {
      final page = pageVewController.page ?? 0;
      if (!endReacher && page >= slides.length - 1.5) {
        setState(() {
          endReacher = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageVewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageVewController,
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
          ),
          endReacher
              ? Positioned(
                  bottom: 20,
                  right: 20,
                  child: FadeInLeft(
                    from: 20,
                    duration: const Duration(milliseconds: 900),
                    child: FilledButton(
                      onPressed: () => context.pop(),
                      child: const Text('Start Now'),
                    ),
                  ),
                )
              : const SizedBox(),
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
