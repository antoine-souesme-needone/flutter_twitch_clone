import 'package:flutter/material.dart';
import 'package:flutter_twitch_clone/src/theme/app_colors.dart';

abstract class AppTextStyles {
  static const TextStyle title = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w700,
    letterSpacing: -1.5,
    height: 1.1,
    color: AppColors.black,
  );
}
