import 'package:chinni_buyumlar/app/constants/imports.dart';

class MarketItemWidget extends StatefulWidget {
  const MarketItemWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;

  @override
  State<MarketItemWidget> createState() => _MarketItemWidgetState();
}

class _MarketItemWidgetState extends State<MarketItemWidget> {
  late bool isChoosed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.h,
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.r),
                    topRight: Radius.circular(15.r),
                  ),
                  color: dark,
                ),
                height: 160.h,
                child: Center(
                  child: Text(
                    widget.title,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 28.sp,
                          color: white,
                        ),
                  ),
                ),
              ),
              Positioned(
                top: 6.0,
                right: 6.0,
                left: 6.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    InkWell(
                      onTap: () {
                        isChoosed = !isChoosed;
                        setState(() {});
                      },
                      child: Container(
                        height: 44.h,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: isChoosed ? green : transparent,
                        ),
                        child: SvgPicture.asset(
                          AppIcons.heart,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.h,
                horizontal: 20.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.subTitle,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const ButtonBorderedWidget(
                    text: 'Посмотреть',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
