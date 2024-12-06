part of 'app_bloc.dart';

sealed class AppEvent extends Equatable {
  const AppEvent();
  @override
  List<Object> get props => [];
}

class ChangeTheme extends AppEvent {
  final String theme;
  const ChangeTheme({required this.theme});
}

class ChangeLanguage extends AppEvent {
  final String locale;
  const ChangeLanguage({required this.locale});
}
