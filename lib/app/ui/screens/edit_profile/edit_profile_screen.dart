import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:easy_localization/easy_localization.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const BackWidget(),
        title: Text(
          LocaleKeys.profile.tr(),
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      AppImages.user,
                    ),
                    maxRadius: 43.r,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      LocaleKeys.add.tr(),
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: lightGreyText,
                          ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              EditWidget(
                title: LocaleKeys.phone_number.tr(),
                isNum: true,
              ),
              EditWidget(
                title: LocaleKeys.name.tr(),
              ),
              EditWidget(
                title: LocaleKeys.surename.tr(),
              ),
              EditWidget(
                title: LocaleKeys.middle_name.tr(),
              ),
              EditWidget(
                title: LocaleKeys.birth_date.tr(),
                date: _selectedDate?.toString().split(" ").first ?? "",
                func: () {
                  _selectDate(context);
                },
              ),
              EditWidget(
                title: LocaleKeys.country.tr(),
                isDropDownButton: true,
              ),
               EditWidget(
                title: LocaleKeys.city.tr(),
                isDropDownButton: true,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                LocaleKeys.address.tr(),
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              SizedBox(
                height: 20.h,
              ),
               EditWidget(
                title: LocaleKeys.street.tr(),
              ),
              EditWidget(
                title: LocaleKeys.house.tr(),
              ),
              SizedBox(
                height: 20.h,
              ),
              ButtonWidget(
                text: LocaleKeys.change.tr(),
                start: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              SizedBox(
                height: MediaQuery.of(context).padding.bottom + 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
