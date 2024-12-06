part of 'app_bloc.dart';

class AppState extends Equatable {
  final String locale;
  final String theme;

  const AppState({
    required this.locale,
    required this.theme,
  });

  @override
  List<Object> get props => [locale, theme];
}

final class AppInitial extends AppState {
  AppInitial()
      : super(
          locale: Locator.instance.get<SharedPrefServices>().getLocale,
          theme: Locator.instance.get<SharedPrefServices>().getAppTheme,
        );
}
