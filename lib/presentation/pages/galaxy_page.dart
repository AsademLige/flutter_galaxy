import 'package:flutter/material.dart';
import 'package:flutter_galaxy/busines_logic/blocs/galaxy_bloc/galaxy_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GalaxyPage extends StatelessWidget {
  const GalaxyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => GalaxyBloc(),
        child: const Center(
          child: Text("Тут будет происходить магияяя"),
        ),
      ),
    );
  }
}
