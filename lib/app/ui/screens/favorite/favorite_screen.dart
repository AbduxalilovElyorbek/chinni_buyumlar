import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:easy_localization/easy_localization.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.favorites.tr(),
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FavoriteList(),
              SizedBox(
                height: 20.h,
              ),
              Text(
                LocaleKeys.ads_bloc.tr(),
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const GridListWidget(type: "product"),
              SizedBox(
                height: MediaQuery.of(context).padding.bottom + 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
