import 'package:chinni_buyumlar/app/constants/imports.dart';

class RestorePasswordPhone extends StatefulWidget {
  const RestorePasswordPhone({super.key});

  @override
  State<RestorePasswordPhone> createState() => _RestorePasswordPhoneState();
}

class _RestorePasswordPhoneState extends State<RestorePasswordPhone> {
  late TextEditingController phone;

  @override
  void initState() {
    phone = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    phone.dispose();
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
            SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Восстановить пароль",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Номер телефона",
                          style: Theme.of(context).textTheme.bodyLarge!,
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        TextFieldWithoutIconWidget(
                          hasPref: false,
                          controller: phone,
                          text: "+ (998)",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
            const SizedBox(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: ButtonWidget(
                text: "Запросить код",
                start: Alignment.topCenter,
                end: Alignment.bottomCenter,
                func: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PasswordRestoreCheckSms(),
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
