import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:easy_localization/easy_localization.dart';

class PasswordRestoreCheckSms extends StatefulWidget {
  const PasswordRestoreCheckSms({super.key});

  @override
  State<PasswordRestoreCheckSms> createState() =>
      _PasswordRestoreCheckSmsState();
}

class _PasswordRestoreCheckSmsState extends State<PasswordRestoreCheckSms> {
  late TextEditingController sms;

  int _secondsRemaining = 60;
  Timer? _timer;

  @override
  void initState() {
    sms = TextEditingController();
    _startTimer();
    super.initState();
  }

  @override
  void dispose() {
    sms.dispose();
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _timer?.cancel();
        }
      });
    });
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
                Column(
                  children: [
                    Text(
                      LocaleKeys.enter_sms.tr(),
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: LocaleKeys.sms_sended.tr(),
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: greyText,
                                    ),
                          ),
                          TextSpan(
                            text: " +99899 999 99 99",
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                       LocaleKeys.change_num.tr() ,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: lightGreen,
                            ),
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            LocaleKeys.enter_received_code.tr(),
                            style: Theme.of(context).textTheme.bodyMedium!,
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          TextFieldWithoutIconWidget(
                            hasPref: false,
                            controller: sms,
                            isCenter: true,
                            text: LocaleKeys.confirm_code.tr(),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${LocaleKeys.resend_via.tr()} 00:${_secondsRemaining == 0 ? 00 : _secondsRemaining}",
                                style: Theme.of(context).textTheme.bodyLarge!,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
                const SizedBox(),
                Column(
                  children: [
                    Text(
                      LocaleKeys.resend.tr(),
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: lightGreyText,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: ButtonWidget(
                        text: LocaleKeys.confirm.tr(),
                        start: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        func: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RestoreNewPassword(),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        LocaleKeys.already_registered.tr(),
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: grey,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
