import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laziness_slayer/src/bloc/app_bloc/app_bloc.dart';
import 'package:laziness_slayer/src/core/app_routes.dart';
import 'package:laziness_slayer/src/core/configurations.dart';
import 'package:laziness_slayer/src/core/locator.dart';
import 'package:laziness_slayer/src/core/providers.dart';
import 'package:laziness_slayer/src/services/shared_preference_service.dart';
import 'package:laziness_slayer/src/theme/app_theme.dart';
import 'package:laziness_slayer/src/utils/app_assets.dart';
import 'package:laziness_slayer/src/utils/app_constants.dart';

final globalNavigatorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await EasyLocalization.ensureInitialized();
  await initializeConfig();
  FlutterNativeSplash.remove();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      path: AppAssets.baseTranslationPath,
      fallbackLocale: const Locale('en'),
      saveLocale: false,
      useFallbackTranslations: true,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final sharedPref = Locator.instance.get<SharedPrefServices>();
    if (sharedPref.getLocaleCode != null &&
        sharedPref.getLocaleCode != context.locale.languageCode) {
      context.setLocale(Locale(sharedPref.getLocale));
    }

    return MultiBlocProvider(
      providers: providers,
      child: ScreenUtilInit(
        designSize: const Size(375, 896),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, orientation) {
          return BlocBuilder<AppBloc, AppState>(
            builder: (context, state) {
              return MaterialApp(
                builder: (context, child) {
                  return child!;
                },
                debugShowCheckedModeBanner: false,
                navigatorKey: globalNavigatorKey,
                title: AppConstants.appName,
                theme: AppTheme.lightTheme,
                darkTheme: AppTheme.darkTheme,
                themeMode: ThemeMode.values
                    .where((element) => element.name == state.theme)
                    .first,
                onGenerateRoute: generateRoute,
                initialRoute: initialRoute,
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
              );
            },
          );
        },
      ),
    );
  }
}
