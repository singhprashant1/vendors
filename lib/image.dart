import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "ASSETS/splash.jpg",
      fit: BoxFit.cover,
    );
  }
}

class RegImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "ASSETS/donespl.jpg",
      fit: BoxFit.cover,
    );
  }
}
