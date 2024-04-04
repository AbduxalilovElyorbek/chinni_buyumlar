import 'package:chinni_buyumlar/app/constants/imports.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({
    super.key,
    required this.title,
    required this.func,
    required this.showDiscount,
    this.hasDiscount,
    this.color,
  });
  final String title;
  final String? hasDiscount;
  final bool showDiscount;
  final Color? color;
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
                  side: BorderSide(color: green),
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
        SizedBox(
          height: 360.h,
          width: double.infinity,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(
              left: 20.w,
              bottom: 5.h,
              top: 5.h,
            ),
            itemCount: 5,
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 13.w,
              );
            },
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ItemScreen(),),);
                },
                child: DefItemWidget(
                  hasDiscount: hasDiscount,
                  color: color,
                  isDiscount: showDiscount,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
