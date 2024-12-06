import 'package:get_it/get_it.dart';
import 'package:laziness_slayer/src/services/shared_preference_service.dart';

class Locator {
  static GetIt _i = GetIt.instance;
  static GetIt get instance => _i;

  Locator.setup() {
    _i = GetIt.I;
    //services
    _i.registerSingleton<SharedPrefServices>(SharedPrefServices());
  }
}
