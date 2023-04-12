import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/screens/screens.dart';
import 'package:flutter_whatsapp_clone/widgets/widgets.dart';

Route<dynamic> generateRoute(RouteSettings setting) {
  switch (setting.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(
            error: 'This page doesn\'t exist',
          ),
        ),
      );
  }
}
