import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:easy_localization/easy_localization.dart';

class RestoreNewPassword extends StatefulWidget {
  const RestoreNewPassword({super.key});

  @override
  State<RestoreNewPassword> createState() => _RestoreNewPasswordState();
}

class _RestoreNewPasswordState extends State<RestoreNewPassword> {
  late TextEditingController newPassword;
  late TextEditingController checkPassword;

  @override
  void initState() {
    newPassword = TextEditingController();
    checkPassword = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    newPassword.dispose();
    checkPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppIcons.dish,
              colorFilter: ColorFilter.mode(
                green,
                BlendMode.srcIn,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      LocaleKeys.change_password.tr(),
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    LocaleKeys.new_password.tr(),
                    style: Theme.of(context).textTheme.bodyLarge!,
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  TextFieldWithoutIconWidget(
                    hasPref: false,
                    controller: newPassword,
                    text: "",
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    LocaleKeys.confirm_password.tr(),
                    style: Theme.of(context).textTheme.bodyLarge!,
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  TextFieldWithoutIconWidget(
                    hasPref: false,
                    controller: checkPassword,
                    text: "",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const SizedBox(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: ButtonWidget(
                text: LocaleKeys.continue_checkout.tr(),
                start: Alignment.topCenter,
                end: Alignment.bottomCenter,
                func: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NavigationScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
