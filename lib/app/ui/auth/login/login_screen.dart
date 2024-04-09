import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:easy_localization/easy_localization.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController user;
  late TextEditingController password;

  @override
  void initState() {
    user = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    user.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(),
                SvgPicture.asset(
                  AppIcons.dish,
                  colorFilter: ColorFilter.mode(
                    green,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.w,
                  ),
                  child: Column(
                    children: [
                      TextFieldWidget(
                        controller: user,
                        value: AppIcons.personField,
                        isIcon: true,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextFieldWidget(
                        controller: password,
                        value: AppIcons.shopField,
                        isIcon: true,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const RestorePasswordPhone(),
                            ),
                          );
                        },
                        child: Text(
                          LocaleKeys.forget_password.tr(),
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Column(
                    children: [
                      ButtonWidget(
                        text: LocaleKeys.enter.tr(),
                        start: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        func: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NavigationScreen(),
                            ),
                            (route) => false,
                          );
                        },
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterScreen(),
                            ),
                          );
                        },
                        child: Text(
                          LocaleKeys.register.tr(),
                          style: Theme.of(context).textTheme.bodyLarge!,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).padding.bottom + 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
