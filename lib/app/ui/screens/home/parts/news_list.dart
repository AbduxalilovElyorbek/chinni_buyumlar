import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:chinni_buyumlar/app/ui/screens/home/widgets/news_item.dart';

class NewsListWidget extends StatelessWidget {
  const NewsListWidget({
    super.key,
    required this.title,
    required this.func,
  });
  final String title;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: green,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              ElevatedButton(
                onPressed: func,
                style: ElevatedButton.styleFrom(
                  backgroundColor: transparent,
                  padding: EdgeInsets.symmetric(vertical: 6.h),
                  elevation: 0,
                  side: BorderSide(
                    color: green,
                  ),
                ),
                child: Text(
                  "Все",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: lightGreen,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20.w),
              itemCount: 5,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 13.w,
                );
              },
              itemBuilder: (context, index) {
                return const NewsItemWidget(
                  text: "В текст представили портрет типичного покупателя",
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
