import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmbiame/src/repositories/auth_repository.dart';
import 'package:kmbiame/src/repositories/swap_repository.dart';
import 'package:kmbiame/src/repositories/user_repository.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:kmbiame/resources/themes.dart';
import 'package:kmbiame/src/features/splash/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MultiRepositoryProvider(
        providers: [
          RepositoryProvider<SwapRepository>(
            create: (context) => SwapRepository(),
          ),
          RepositoryProvider<AuthRepository>(
            create: (context) => AuthRepository(),
          ),
          RepositoryProvider<UserRepository>(
            create: (context) => UserRepository(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "context.loc.appTitle",
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            // 'en' is the language code. We could optionally provide a
            // a country code as the second param, e.g.
            // Locale('en', 'US'). If we do that, we may want to
            // provide an additional app_en_US.arb file for
            // region-specific translations.
            Locale('en', ''),
            Locale('es', ''),
          ],
          theme: Themes.lightTheme,
          home: const SplashScreen(),
        ),
      );
    });
  }
}
