import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// bool isDarkMode = false;
final isDarkModeProvider = StateProvider((ref) => true);

// --- --- -- Color List immutable
final colorListProvider = Provider((ref) => colorList);

// --- ---- -- Select Int
final selectedColorProvider = StateProvider<int>((ref) => 0);
