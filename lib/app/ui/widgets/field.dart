import 'package:chinni_buyumlar/app/constants/imports.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
     this.controller,
    required this.value,
    required this.isIcon,
  });
  final TextEditingController? controller;
  final String value;
  final bool isIcon;

  @override
  Widget build(BuildContext context) {
    InputBorder style = OutlineInputBorder(
      borderRadius: BorderRadius.circular(50.r),
      borderSide: isIcon
          ? BorderSide(
              color: lightGreen.withOpacity(0.7),
            )
          : BorderSide(
              color: dark.withOpacity(0.7),
            ),
    );

    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
        enabledBorder: style,
        border: style,
        focusedBorder: style,
        disabledBorder: style,
        prefixIcon: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 6.w),
              padding: EdgeInsets.symmetric(
                vertical: 6.h,
                horizontal: 10.w,
              ),
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: isIcon
                        ? lightGreen.withOpacity(0.7)
                        : dark.withOpacity(0.7),
                  ),
                ),
              ),
              child: isIcon
                  ? SvgPicture.asset(
                      value,
                      colorFilter: ColorFilter.mode(
                        lightGreen.withOpacity(0.7),
                        BlendMode.srcIn,
                      ),
                    )
                  : Text(
                      value,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 16.sp,
                            color: lightGrey,
                          ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
