import 'package:chinni_buyumlar/app/constants/imports.dart';

class PlacingFieldWidget extends StatefulWidget {
  const PlacingFieldWidget({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;

  @override
  State<PlacingFieldWidget> createState() => _PlacingFieldWidgetState();
}

class _PlacingFieldWidgetState extends State<PlacingFieldWidget> {
  @override
  Widget build(BuildContext context) {
    InputBorder style = OutlineInputBorder(
      borderRadius: BorderRadius.circular(50.r),
      borderSide: BorderSide.none,
    );

    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
        enabledBorder: style,
        border: style,
        fillColor: lightGrey.withOpacity(0.1),
        filled: true,
        focusedBorder: style,
        disabledBorder: style,
        hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 16.sp,
              color: lightGrey,
            ),
      ),
    );
  }
}
