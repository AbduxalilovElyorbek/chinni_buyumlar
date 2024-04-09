import 'package:chinni_buyumlar/app/constants/imports.dart';

class CommentItem extends StatelessWidget {
  const CommentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 15.h,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0.0),
            blurRadius: 10.0,
            spreadRadius: 2.0,
            color: shadow.withOpacity(0.25),
          ),
        ],
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      AppImages.user,
                    ),
                    maxRadius: 28.r,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Рафаэль",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      Row(
                        children: List.generate(
                          5,
                          (index) => SvgPicture.asset(
                            AppIcons.star,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                "10.14.2022. 17:00",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: lightGreyText,
                    ),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          SizedBox(
            width: 310.w,
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: lightGreyText,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
