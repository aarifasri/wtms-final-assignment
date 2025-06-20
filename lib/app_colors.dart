import 'package:flutter/material.dart';

class AppColors {
  // Primary color for main actions (e.g., Login, Register, Edit Profile buttons)
  static final Color primary = Colors.indigo.shade700;

  // Secondary color for other significant actions (e.g., Save Changes, Submit, Edit buttons)
  static final Color secondary = Colors.teal.shade600;

  // Accent color for specific highlights if needed (e.g., an alternative edit button)
  static final Color accent = Colors.orange.shade700;

  // Gradient colors for AppBars, matching the ProfileScreen
  static final List<Color> appBarGradientColors = [
    Colors.teal.shade600,
    Colors.indigo.shade900,
  ];

  // Neutral background color for screens
  static final Color screenBackground = Colors.grey.shade100;

  // Text color for buttons using primary/secondary background
  static const Color textOnPrimary = Colors.white;
  static const Color textOnSecondary = Colors.white;
}
