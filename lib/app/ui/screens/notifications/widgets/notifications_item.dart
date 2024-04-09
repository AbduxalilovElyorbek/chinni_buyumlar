import 'package:chinni_buyumlar/app/constants/imports.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.w,
        vertical: 14.h,
      ),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(
          15.r,
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0.0),
            blurRadius: 10.0,
            spreadRadius: 2.0,
            color: shadow.withOpacity(0.25),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Заказ 118: ",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      TextSpan(
                        text: "Завершен",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w700,
                              color: greyText,
                            ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "17:00",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: lightGreyText,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
