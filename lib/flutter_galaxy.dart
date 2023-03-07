import 'package:flutter_galaxy/busines_logic/observer.dart';
import 'package:flutter_galaxy/presentation/pages/galaxy_page.dart';
import 'package:flutter/material.dart';

class FlutterGalaxy extends StatelessWidget {
  FlutterGalaxy({super.key}) {
    Observer();
  }

  @override
  Widget build(BuildContext context) {
    return const GalaxyPage();
  }
}
