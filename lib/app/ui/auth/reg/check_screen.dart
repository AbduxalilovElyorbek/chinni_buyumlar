import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:easy_localization/easy_localization.dart';

class CheckPasswordScreen extends StatefulWidget {
  const CheckPasswordScreen({super.key});

  @override
  State<CheckPasswordScreen> createState() => _CheckPasswordScreenState();
}

class _CheckPasswordScreenState extends State<CheckPasswordScreen> {
  late TextEditingController password;
  late TextEditingController checkPassword;

  @override
  void initState() {
    password = TextEditingController();
    checkPassword = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    password.dispose();
    checkPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                SvgPicture.asset(
                  AppIcons.dish,
                  colorFilter: ColorFilter.mode(
                    green,
                    BlendMode.srcIn,
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        LocaleKeys.register.tr(),
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40.w),
                        child: TextFieldWithoutIconWidget(
                          controller: password,
                          text: LocaleKeys.enter_password.tr(),
                          hasPref: true,
                          icon: AppIcons.eye,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40.w),
                        child: TextFieldWithoutIconWidget(
                          hasPref: true,
                          controller: checkPassword,
                          text: LocaleKeys.enter_received_code.tr(),
                          icon: AppIcons.eye,
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40.w),
                        child: ButtonWidget(
                          func: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                          text: LocaleKeys.next.tr(),
                          start: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(),
                const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
