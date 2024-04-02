import 'package:chinni_buyumlar/app/constants/imports.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50.h,
              ),
              SvgPicture.asset(
                AppIcons.dish,
                colorFilter: ColorFilter.mode(
                  green,
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
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
                            builder: (context) => const RestorePasswordPhone(),
                          ),
                        );
                      },
                      child: Text(
                        "Забыли пароль",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
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
                      text: "Войти",
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
                        "Регистрация",
                        style: Theme.of(context).textTheme.bodyLarge!,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
