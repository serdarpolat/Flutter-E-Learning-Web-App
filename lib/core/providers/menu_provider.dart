import 'package:flutter_riverpod/flutter_riverpod.dart';

class MenuNotifier extends StateNotifier<bool> {
  MenuNotifier() : super(false);

  void toggle() => state = !state;
}

final menuProvider = StateNotifierProvider<MenuNotifier, bool>((ref) => MenuNotifier());
