// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DashboardContainer extends StatelessWidget {
  final Color? color;
  final Widget child;
  const DashboardContainer({
    super.key,
    required this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: color,
      child: child,
    );
  }
}
