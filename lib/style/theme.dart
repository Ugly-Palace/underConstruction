import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as Ma;

class Colors {
  const Colors();

  static const Color loginGradientStart = Ma.Colors.redAccent;
  static const Color loginGradientEnd = Ma.Colors.orange;

  static const primaryGradient = const LinearGradient(
    colors: const [loginGradientStart, loginGradientEnd],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
