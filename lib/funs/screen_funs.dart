import 'package:flutter/material.dart';

class ScreenFuns {
  double getPaddingBottom(BuildContext context) {
    double chin;

    chin  = MediaQuery.of(context).padding.bottom;
    chin != 0.0 ? chin : chin = chin + 16.0;

    return chin;
  }
}