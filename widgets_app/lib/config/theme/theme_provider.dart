import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// bool isDarkMode = false;
final isDarkModeProvider = StateProvider((ref) => true);

// --- --- -- Color List immutable
final colorListProvider = Provider((ref) => colorList);

// --- ---- -- Select Int
final selectedColorProvider = StateProvider<int>((ref) => 0);

// ---- --- -- Objet type AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

// --- --- -- Controller Notifier

class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = state = new AppTheme();
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
