import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:easy_localization/easy_localization.dart';

class SearchTextFieldWidget extends StatelessWidget {
  const SearchTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 290.w,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(AppIcons.search),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(AppIcons.searchWithCamera),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(45.r),
            borderSide: BorderSide(color: grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(45.r),
            borderSide: BorderSide(color: grey, width: 2),
          ),
          hintText: LocaleKeys.search.tr(),
          contentPadding: EdgeInsets.symmetric(vertical: 12.h),
          hintStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: greyText.withOpacity(0.7),
          ),
        ),
      ),
    );
  }
}
