import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:chinni_buyumlar/app/ui/screens/choose_lang/choose_lang_screen.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      assetLoader: const CodegenLoader(),
      supportedLocales: const [
        Locale('en'),
        Locale('ru'),
        Locale('uz'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('ru'),
      child: const MyApp(),
    ),
  );

  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          locale: context.locale,
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: TextTheme(
              titleLarge: TextStyle(
                fontSize: 25.sp,
                color: dark,
              ),
              titleMedium: TextStyle(
                fontSize: 24.sp,
                color: dark,
              ),
              titleSmall: TextStyle(
                fontSize: 21.sp,
                color: dark,
              ),
              bodyLarge: TextStyle(
                fontSize: 15.sp,
                color: dark,
              ),
              bodyMedium: TextStyle(
                fontSize: 13.sp,
                color: dark,
              ),
            ),
          ),
          home: const ChooseLangScreen(),
        );
      },
    );
  }
}
