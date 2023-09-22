import 'package:daangn_ui/common/theme/custom_theme.dart';
import 'package:daangn_ui/common/theme/custom_theme_app.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart';

import 'app.dart';
import 'common/data/preference/app_preferences.dart';
import 'common/data/preference/prefs.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await AppPreferences.init();
  CustomThemeApp.init(saveThemeFunction: (theme) {
    Prefs.appTheme.set(theme); // 또는 Prefs.appTheme(theme) 이렇게 저장도 가능
  });
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  setLocaleMessages('ko', KoMessages());
  runApp(EasyLocalization(
      supportedLocales: const [Locale('ko')],
      fallbackLocale: const Locale('ko'),
      path: 'assets/translations',
      useOnlyLangCode: true,
      child: CustomThemeApp(
        defaultTheme: CustomTheme.dark,
        savedTheme: Prefs.appTheme.get(),
        child: const App(),
      )));
}
