import 'package:flutter/material.dart';
import 'package:reponsive_ui_projects/music_app/responsiveness/desktop.dart';
import 'package:reponsive_ui_projects/music_app/responsiveness/mobile.dart';
import 'package:reponsive_ui_projects/music_app/responsiveness/responsive_widget.dart';
import 'package:reponsive_ui_projects/music_app/responsiveness/tablet.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ResponsiveWidget(
          mobile: Mobile(),
          tablet: Tablet(),
          desktop: Desktop(),
        ),
      ),
    );
  }
}
