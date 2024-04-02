import 'package:chinni_buyumlar/app/constants/imports.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      "Регистрация",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
                        text: "Введите пароль",
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
                        text: "Подтвердите пароль",
                        icon: AppIcons.eye,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
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
                        text: "Далее",
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
    );
  }
}
