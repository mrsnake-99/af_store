import 'package:af_store/app.dart';
import 'package:af_store/data/repositories/authentication_rep/authentication_rep.dart';
import 'package:af_store/firebase_options.dart';
// import 'package:af_store/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  //Widgets Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  setPathUrlStrategy();

  //Local Storage
  await GetStorage.init();
  // Todo: Init payment methods

  //native splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //Todo: Init Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then(
    (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );

  // Todo: Initilaize Authentification
  runApp(const App());
}
// Commit at 2022-10-03 11:23:41
// Commit at 2022-09-08 10:38:34
// Commit at 2023-08-18 18:47:56
// Commit at 2023-07-09 16:28:10
// Commit at 2023-06-18 09:36:30
// Commit at 2024-10-02 09:08:01
// Commit at 2024-06-12 16:47:54
// Commit at 2024-09-10 15:58:53
// Commit at 2024-05-15 18:29:00
// Commit at 2024-11-06 13:51:02
// Commit at 2024-06-08 10:13:54
// Random commit
// Random commit
// Random commit
Random commit
Random commit
Random commit
Random commit
Random commit
