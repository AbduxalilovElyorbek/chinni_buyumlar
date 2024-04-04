import 'package:chinni_buyumlar/app/constants/imports.dart';

class DefItemWidget extends StatefulWidget {
  const DefItemWidget({
    super.key,
    this.hasDiscount,
    this.color,
    required this.isDiscount,
  });
  final String? hasDiscount;
  final Color? color;
  final bool isDiscount;

  @override
  State<DefItemWidget> createState() => _DefItemWidgetState();
}

class _DefItemWidgetState extends State<DefItemWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190.w,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                AppImages.item,
              ),
              Positioned(
                top: 6.0,
                right: 6.0,
                left: 6.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    widget.hasDiscount != null
                        ? Container(
                            decoration: BoxDecoration(
                              color: widget.color,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 14.w,
                              vertical: 5.h,
                            ),
                            child: Text(
                              widget.hasDiscount!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: white,
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                          )
                        : const SizedBox(),
                    const FavoriteWidget(),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.h,
              horizontal: 20.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Люстры",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: grey,
                      ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "KR77",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                widget.isDiscount
                    ? Text(
                        "1.200.000 UZS",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w400,
                              color: dark.withOpacity(0.5),
                              decoration: TextDecoration.lineThrough,
                              decorationColor: dark.withOpacity(0.5),
                            ),
                      )
                    : const SizedBox(),
                Text(
                  "700.000 UZS",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                ButtonBorderedWidget(
                  text: 'В корзину',
                  icon: AppIcons.shop,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
