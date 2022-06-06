import 'package:flutter/cupertino.dart';

class Colors {
  final Color _mainDarkColor = const Color(0xFFf38f1f);
  final Color _mainDarkColor2 = const Color(0xFF6b3d09);
  final Color _secondDarkColor = const Color(0xFFccccdd);
  final Color _accentDarkColor = const Color(0xFF9999aa);
  final Color _scaffoldDarkColor = const Color(0xFF2C2C2C);
  // Color _captionColor = Color(0xFF);

  final Color _featuredColor = const Color(0xFF2AB7CA);
  final Color _favoriteColor = const Color(0xFFd62828);
  final Color _topColor = const Color(0xFFffe066);
  final Color _recentColor = const Color(0xFFf7fff7);

  final Color _splashColor = const Color(0xFF121212);

  Color mainDarkColor(double opacity) {
    return _mainDarkColor.withOpacity(opacity);
  }

  Color secondDarkColor(double opacity) {
    return _secondDarkColor.withOpacity(opacity);
  }

  Color accentDarkColor(double opacity) {
    return _accentDarkColor.withOpacity(opacity);
  }

  Color scaffoldDarkColor(double opacity) {
    return _scaffoldDarkColor.withOpacity(opacity);
  }

  Color splashColor(double opacity) {
    return _splashColor.withOpacity(opacity);
  }

  Color featuredColor(double opacity) {
    return _featuredColor.withOpacity(opacity);
  }

  Color topColor(double opacity) {
    return _topColor.withOpacity(opacity);
  }

  Color recentColor(double opacity) {
    return _recentColor.withOpacity(opacity);
  }

  Color favoriteColor(double opacity) {
    return _favoriteColor.withOpacity(opacity);
  }

  LinearGradient appGradient() {
    return const LinearGradient(colors: [
      Color.fromRGBO(0, 0, 0, 0.85),
      Color.fromRGBO(0, 0, 0, 0.75),
    ], begin: FractionalOffset.topCenter, end: FractionalOffset.bottomCenter);
  }

  LinearGradient primaryGradient() {
    return LinearGradient(colors: <Color>[
      _mainDarkColor2,
      _mainDarkColor,
    ]);
  }
}
