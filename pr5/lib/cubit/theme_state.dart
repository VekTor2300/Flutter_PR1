part of 'theme_cubit.dart';

@immutable
abstract class ThemeState {}

class ThemeInitial extends ThemeState {}

class UpdateTheme extends ThemeState {
  final Brightness brightness;

  UpdateTheme(this.brightness);
}
