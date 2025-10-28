part of 'theme_cubit.dart';

@Freezed(copyWith: true)
abstract class ThemeState with _$ThemeState {
  const ThemeState._();

  const factory ThemeState({@Default(ThemeMode.light) ThemeMode themeMode}) =
      _ThemeState;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  bool get isLightMode => themeMode == ThemeMode.light;

  bool get isSystemMode => themeMode == ThemeMode.system;
}
