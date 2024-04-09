import 'package:chinni_buyumlar/app/constants/imports.dart';

class NewsItemWidget extends StatefulWidget {
  const NewsItemWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  State<NewsItemWidget> createState() => _NewsItemWidgetState();
}

class _NewsItemWidgetState extends State<NewsItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              const Positioned(
                top: 6.0,
                right: 6.0,
                left: 6.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    FavoriteWidget(),
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
                SizedBox(
                  width: 140.w,
                  child: Text(
                    widget.text,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                const ButtonBorderedWidget(
                  text: 'Подробнее',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
