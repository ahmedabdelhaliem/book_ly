import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class SimipleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    log(change.toString());
    // TODO: implement onChange
    super.onChange(bloc, change);
  }
}
