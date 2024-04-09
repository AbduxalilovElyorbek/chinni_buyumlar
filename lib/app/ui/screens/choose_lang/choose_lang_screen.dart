import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:easy_localization/easy_localization.dart';

class ChooseLangScreen extends StatefulWidget {
  const ChooseLangScreen({super.key});

  @override
  State<ChooseLangScreen> createState() => _ChooseLangScreenState();
}

class _ChooseLangScreenState extends State<ChooseLangScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(),
            Center(
              child: SvgPicture.asset(
                AppIcons.logo,
                colorFilter: ColorFilter.mode(
                  lightGreen,
                  BlendMode.srcIn,
                ),
                width: 235.w,
              ),
            ),
            Text(
              LocaleKeys.choose_lan.tr(),
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
            ),
            Column(
              children: [
                ChooseLanButton(
                  icon: AppIcons.ru,
                  title: LocaleKeys.ru.tr(),
                  isActive: index == 0 ? true : false,
                  func: () async {
                    await context.setLocale(const Locale("ru"));
                    index = 0;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 10.h,
                ),
                ChooseLanButton(
                  icon: AppIcons.uz,
                  title: LocaleKeys.uz.tr(),
                  isActive: index == 1 ? true : false,
                  func: () {
                    context.setLocale(const Locale("uz"));
                    index = 1;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );

                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 10.h,
                ),
                ChooseLanButton(
                  icon: AppIcons.eng,
                  title: LocaleKeys.eng.tr(),
                  isActive: index == 2 ? true : false,
                  func: () {
                    context.setLocale(const Locale("en"));

                    index = 2;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );

                    setState(() {});
                  },
                ),
              ],
            ),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
