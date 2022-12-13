import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  Brightness brightness = Brightness.light;

  void setBrigthness(Brightness theme) {
    brightness = theme;
    emit(UpdateTheme(brightness));
  }
}
