// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Responsiveness extends StatelessWidget {
  final Widget mobileScreen;
  final Widget tabletScreen;
  final Widget desktopScreen;
  const Responsiveness({
    super.key,
    required this.mobileScreen,
    required this.tabletScreen,
    required this.desktopScreen,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth < 600) {
          return mobileScreen;
        } else if (constraint.maxWidth < 1100) {
          return tabletScreen;
        }
        return desktopScreen;
      },
    );
  }
}
