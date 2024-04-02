import 'package:chinni_buyumlar/app/constants/imports.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            "Популярные категории",
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: green,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          height: 200.h,
          width: double.infinity,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(left: 20.w),
            itemCount: 5,
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 13.w,
              );
            },
            itemBuilder: (context, index) {
              return const CategoryItemWidget(
                isHigh: true,
                text: 'Осветительные Приборы',
              );
            },
          ),
        ),
      ],
    );
  }
}
