import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Theme Screen'),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.wb_sunny : Icons.brightness_3),
            onPressed: () {
              // ref.read(isDarkModeProvider.notifier).update((state) => !state);
              ref.read(themeNotifierProvider.notifier).toggleDarkMode();
            },
          ),
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorListProvider);

    // final selectedColor = ref.watch(selectedColorProvider);
    final int selectedColor2 = ref.watch(themeNotifierProvider).selectedColor;

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];

        return RadioListTile(
          title: Text('Code the color:', style: TextStyle(color: color)),
          subtitle: Text('#${color.value.toRadixString(16)}'),
          activeColor: color,
          value: index,
          groupValue: selectedColor2,
          onChanged: (value) {
            // ref.read(themeNotifierProvider.notifier).changeColorIndex(value!);
            ref.read(themeNotifierProvider.notifier).changeColorIndex(value!);
            // ref.read(selectedColorProvider.notifier).state = value!;
            // ref.read(selectedColorProvider.notifier).state = index;
          },
        );
      },
    );
  }
}
