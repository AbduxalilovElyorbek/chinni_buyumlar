import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:chinni_buyumlar/app/ui/screens/orders/orders_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Профиль",
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
                      Text(
                        "Изменить личные данные",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: lightGreyText,
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
                title: "Мои заказы",
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
                title: "Настройки",
              ),
              SizedBox(
                height: 8.h,
              ),
              ProfileNavigationItem(
                icon: AppIcons.location,
                title: "Мы на карте",
              ),
              SizedBox(
                height: 8.h,
              ),
              ProfileNavigationItem(
                icon: AppIcons.help,
                title: "Техническая поддержка",
              ),
              SizedBox(
                height: 8.h,
              ),
              ProfileNavigationItem(
                icon: AppIcons.discount,
                title: "Бонусная программа",
              ),
              SizedBox(
                height: 8.h,
              ),
              ProfileNavigationItem(
                icon: AppIcons.transactions,
                title: "Транзакции",
              ),
              SizedBox(
                height: 8.h,
              ),
              ProfileNavigationItem(
                icon: AppIcons.notifications,
                title: "Уведомления",
              ),
              SizedBox(
                height: 8.h,
              ),
              ProfileNavigationItem(
                icon: AppIcons.message,
                title: "Сообщения",
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
