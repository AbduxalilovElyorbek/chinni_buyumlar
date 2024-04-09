import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:easy_localization/easy_localization.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const BackWidget(),
        title: Text(
          LocaleKeys.help.tr(),
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.subject.tr(),
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: lightGreyText,
                    ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const DropDownButton(
                items: [
                  "Другое",
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                LocaleKeys.message.tr(),
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: lightGreyText,
                    ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 170.h,
                width: double.infinity,
                child: TextField(
                  maxLines: null,
                  expands: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 20.h,
                    ),
                    isCollapsed: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: lightGrey.withOpacity(0.1),
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              ButtonWidget(
                text: LocaleKeys.send.tr(),
                start: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              SizedBox(
                height: 40.h,
              ),
              Center(
                child: Text(
                  LocaleKeys.write_to.tr(),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppIcons.telegram,
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppIcons.facebook,
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppIcons.call,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
