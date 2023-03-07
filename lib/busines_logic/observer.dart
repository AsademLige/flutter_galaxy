import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer' as l;

class Observer extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    l.log('${bloc.runtimeType} $change');
  }
}
