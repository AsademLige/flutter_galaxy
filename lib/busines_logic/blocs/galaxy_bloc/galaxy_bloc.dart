import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'galaxy_event.dart';
part 'galaxy_state.dart';

class GalaxyBloc extends Bloc<GalaxyEvent, GalaxyState> {
  GalaxyBloc() : super(GalaxyInitial()) {
    on<GalaxyEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
