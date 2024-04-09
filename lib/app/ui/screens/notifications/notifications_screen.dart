import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:easy_localization/easy_localization.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const BackWidget(),
        title: Text(
          LocaleKeys.notifications.tr(),
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Text(
              LocaleKeys.today.tr(),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: lightGreyText,
                  ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const NotificationItem(),
            SizedBox(
              height: 20.h,
            ),
            Text(
              LocaleKeys.yesterday.tr(),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: lightGreyText,
                  ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const NotificationItem(),
          ],
        ),
      ),
    );
  }
}
