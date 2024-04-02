import 'package:chinni_buyumlar/app/constants/imports.dart';

class BasketItem extends StatefulWidget {
  const BasketItem({super.key});

  @override
  State<BasketItem> createState() => _BasketItemState();
}

class _BasketItemState extends State<BasketItem> {
  late int count = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      image: DecorationImage(
                        image: AssetImage(
                          AppImages.basket,
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "KR77",
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "1.200.000 UZS",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: dark.withOpacity(0.5),
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor: dark.withOpacity(0.5),
                                  ),
                        ),
                        Text(
                          "700.000 UZS",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: const RadioWidget(),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              const SizedBox(),
              SizedBox(
                height: 35.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        if (count > 1) {
                          count -= 1;
                          setState(() {});
                        }
                      },
                      child: Container(
                        height: double.infinity,
                        padding: EdgeInsets.all(8.r),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              5.r,
                            ),
                            bottomLeft: Radius.circular(
                              5.r,
                            ),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              green,
                              lightGreen,
                            ],
                          ),
                        ),
                        child: SvgPicture.asset(AppIcons.remove),
                      ),
                    ),
                    Container(
                      height: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.symmetric(
                          horizontal: BorderSide(
                            color: greyText.withOpacity(0.7),
                          ),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 18.w,
                      ),
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                            children: [
                              TextSpan(
                                text: "$count",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      color: greyText,
                                    ),
                              ),
                              TextSpan(
                                text: " шт",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      color: greyText.withOpacity(0.7),
                                    ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        count += 1;
                        setState(() {});
                      },
                      child: Container(
                        height: double.infinity,
                        padding: EdgeInsets.all(8.r),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(
                              5.r,
                            ),
                            topRight: Radius.circular(
                              5.r,
                            ),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              green,
                              lightGreen,
                            ],
                          ),
                        ),
                        child: SvgPicture.asset(AppIcons.add),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                child: SvgPicture.asset(
                  AppIcons.trash,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
