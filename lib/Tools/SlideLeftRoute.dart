import 'package:flutter/material.dart';

class SlideLeftRoute extends PageRouteBuilder {
  final Widget widget;

  SlideLeftRoute({required this.widget})
      : super(transitionDuration: Duration(milliseconds: 400),
      transitionsBuilder: (BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1, 0),
            end: Offset.zero,
          ).animate(CurvedAnimation(parent: animation, curve: Curves.ease)),
          child: child,
        );
      }, pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return widget;
      });
}
