import 'package:chinni_buyumlar/app/constants/imports.dart';

class TextFieldFilter extends StatelessWidget {
  const TextFieldFilter({
    super.key,
    required this.controller,
    required this.text, this.func,
  });
  final TextEditingController controller;
  final String text;
  final Function(String)? func;

  @override
  Widget build(BuildContext context) {
    InputBorder style = OutlineInputBorder(
      borderRadius: BorderRadius.circular(50.r),
      borderSide: BorderSide.none,
    );

    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      maxLengthEnforcement: null,
      onChanged: func,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
        fillColor: lightGrey.withOpacity(0.1),
        filled: true,
        enabledBorder: style,
        border: style,
        focusedBorder: style,
        disabledBorder: style,
        hintText: text,
        hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 16.sp,
              color: lightGrey,
            ),
      ),
    );
  }
}
