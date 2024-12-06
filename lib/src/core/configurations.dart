import 'package:firebase_core/firebase_core.dart';
import 'package:laziness_slayer/src/services/shared_preference_service.dart';

import 'locator.dart';

Future<void> initializeConfig() async {
  await Firebase.initializeApp();

  // await dotenv.load();
  await SharedPrefServices.initializeSharedPref();

  // FirebaseConfig().setFirebaseAuth(FirebaseAuth.instance);
  // FirebaseConfig().setFirebaseFirestore(FirebaseFirestore.instance);
  // FirebaseConfig().setCloudFunction(FirebaseFunctions.instanceFor(
  //   region: dotenv.env['CLOUD_FUNCTION_REGION'],
  // ));
  Locator.setup();
  // deepLinkHandling();
  // await Locator.instance.get<OneSignalService>().initialize();
  return;
}
