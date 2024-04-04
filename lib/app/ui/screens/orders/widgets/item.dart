import 'package:chinni_buyumlar/app/constants/imports.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0.0),
            blurRadius: 10.0,
            spreadRadius: 2.0,
            color: shadow.withOpacity(0.25),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "Заказ 118",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    Text(
                      "10.14.2022",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: greyText,
                          ),
                    )
                  ],
                ),
                Text(
                  "Ожидает оплату",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: red,
                      ),
                )
              ],
            ),
          ),
          Divider(
            color: greyText,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 18.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(45.r),
                                color: green,
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 4.h),
                              child: Text(
                                "2x",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: white,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Text(
                              "A55 MORENA",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                          ],
                        ),
                        Text(
                          "Артикул: 34579",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: lightGreyText,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ],
                    ),
                    Text(
                      "3.600.000 сум",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "A55 MORENA",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                        Text(
                          "Артикул: 34579",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: lightGreyText,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ],
                    ),
                    Text(
                      "3.600.000 сум",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Divider(
            color: greyText,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Итого:",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      TextSpan(
                        text: "7.200.000 сум",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 18.sp,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 70.w,
                  height: 35.h,
                  child: ButtonWidget(
                    text: "Детали",
                    start: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
