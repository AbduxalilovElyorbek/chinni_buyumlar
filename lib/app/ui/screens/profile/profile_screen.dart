import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:easy_localization/easy_localization.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Рафаэль",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EditProfileScreen(),
                            ),
                          );
                        },
                        child: Text(
                          LocaleKeys.change_info.tr(),
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: lightGreyText,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              ProfileNavigationItem(
                icon: AppIcons.profileShop,
                title: LocaleKeys.my_orders.tr(),
                func: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyOrdersScreen(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 8.h,
              ),
              ProfileNavigationItem(
                icon: AppIcons.settings,
                title: LocaleKeys.settings.tr(),
                func: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsScreen(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 8.h,
              ),
              ProfileNavigationItem(
                icon: AppIcons.location,
                title: LocaleKeys.map_location.tr(),
              ),
              SizedBox(
                height: 8.h,
              ),
              ProfileNavigationItem(
                icon: AppIcons.help,
                title: LocaleKeys.help.tr(),
                func: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HelpScreen(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 8.h,
              ),
              ProfileNavigationItem(
                icon: AppIcons.discount,
                title: LocaleKeys.bonus.tr(),
                func: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BonusScreen(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 8.h,
              ),
              ProfileNavigationItem(
                icon: AppIcons.transactions,
                title: LocaleKeys.transactions.tr(),
              ),
              SizedBox(
                height: 8.h,
              ),
              ProfileNavigationItem(
                icon: AppIcons.notifications,
                title: LocaleKeys.notifications.tr(),
                func: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationsScreen(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 8.h,
              ),
              ProfileNavigationItem(
                icon: AppIcons.message,
                title: LocaleKeys.sms,
                func: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MessagesScreen(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    SvgPicture.asset(AppIcons.exit),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      LocaleKeys.account_logout.tr(),
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: lightGreyText,
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).padding.bottom + 35.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
