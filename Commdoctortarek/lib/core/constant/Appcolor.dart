// Importing Flutter's Material Design library for using Color class.
import 'package:flutter/material.dart';

// AppColor class holds the color scheme for the application.
class AppColor {
  // Grey color, often used for subtle text or borders.
  static const Color grey = Colors.grey;

  // Primary color, the main color for the application (e.g., for primary buttons, headers).
  static const Color primaryColor = Colors.black;

  // Secondary color, usually complements the primary color and is used for secondary elements.
  static const Color secondaryColor = Colors.blue;

  // Background color for the general application.
  static const Color backgroundColor = Colors.white;

  // Text color, the main color for text elements.
  static const Color textColor = Colors.black;

  // Accent color, used for elements that need to stand out (e.g., accent buttons, highlights).
  static const Color accentColor = Colors.orange;

  // Error color, used to indicate errors or warnings.
  static const Color errorColor = Colors.red;

  // Success color, used to indicate successful operations.
  static const Color successColor = Colors.green;

  // Info color, used to indicate informative text or elements.
  static const Color infoColor = Colors.blueAccent;

  // Custom color for any specific needs not covered by the above colors.
  static const Color customColor = Color(0xFF123456);
}
