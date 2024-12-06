import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laziness_slayer/src/core/locator.dart';
import 'package:laziness_slayer/src/services/shared_preference_service.dart';

import '../../../../../main.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppInitial()) {
    on<ChangeLanguage>((event, emit) {
      globalNavigatorKey.currentContext!.setLocale(Locale(event.locale));
      Locator.instance.get<SharedPrefServices>().setLocale(event.locale);
    });

    on<ChangeTheme>((event, emit) {
      Locator.instance.get<SharedPrefServices>().setAppTheme(event.theme);
      emit(AppState(locale: state.locale, theme: event.theme));
    });
  }
}
