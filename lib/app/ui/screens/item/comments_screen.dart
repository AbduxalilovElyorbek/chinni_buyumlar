import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:easy_localization/easy_localization.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const BackWidget(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.comments.tr(),
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          AppImages.category,
                          width: 95.w,
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          "A55 MORENA",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "4",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        SvgPicture.asset(
                          AppIcons.filledStar,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              const CommentsList(),
              SizedBox(
                height: MediaQuery.of(context).padding.bottom + 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
