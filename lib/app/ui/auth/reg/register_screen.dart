import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:easy_localization/easy_localization.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController number;
  late TextEditingController name;
  late TextEditingController sureName;
  late TextEditingController patronymic;
  late TextEditingController birthDate;
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (selected != null && selected != _selectedDate) {
      setState(() {
        _selectedDate = selected;
      });
    }
  }

  @override
  void initState() {
    number = TextEditingController();
    name = TextEditingController();
    sureName = TextEditingController();
    patronymic = TextEditingController();
    birthDate = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    number.dispose();
    name.dispose();
    sureName.dispose();
    patronymic.dispose();
    birthDate.dispose();
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
                Column(
                  children: [
                    Text(
                      LocaleKeys.register.tr(),
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: TextFieldWidget(
                        controller: number,
                        value: "+ (998)",
                        isIcon: false,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: TextFieldWithoutIconWidget(
                        hasPref: false,
                        controller: name,
                        text: LocaleKeys.name.tr(),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: TextFieldWithoutIconWidget(
                        hasPref: false,
                        controller: sureName,
                        text: LocaleKeys.surename.tr(),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: TextFieldWithoutIconWidget(
                        hasPref: false,
                        controller: patronymic,
                        text: LocaleKeys.middle_name.tr(),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: TextFieldWithoutIconWidget(
                        controller: patronymic,
                        hasPref: false,
                        text: _selectedDate?.toString().split(" ").first ??
                            LocaleKeys.birth_date.tr(),
                        func: () {
                          _selectDate(context);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const RadioWidget(),
                    SizedBox(
                      width: 10.w,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: LocaleKeys.agree_with.tr(),
                            style: Theme.of(context).textTheme.bodyMedium!,
                          ),
                          TextSpan(
                            text: LocaleKeys.agree_with_politics.tr(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: ButtonWidget(
                    text: LocaleKeys.next.tr(),
                    start: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    func: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CheckPasswordScreen(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).padding.bottom + 20.h,
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
