import 'package:chinni_buyumlar/app/constants/imports.dart';

class TextFieldWithoutIconWidget extends StatefulWidget {
  const TextFieldWithoutIconWidget({
    super.key,
     this.controller,
    required this.text,
    this.func,
    this.icon,
    required this.hasPref,
    this.isCenter,
  });
  final TextEditingController? controller;
  final String text;
  final bool hasPref;
  final VoidCallback? func;
  final String? icon;
  final bool? isCenter;

  @override
  State<TextFieldWithoutIconWidget> createState() =>
      _TextFieldWithoutIconWidgetState();
}

class _TextFieldWithoutIconWidgetState
    extends State<TextFieldWithoutIconWidget> {
  late bool isActive = false;

  @override
  Widget build(BuildContext context) {
    InputBorder style = OutlineInputBorder(
      borderRadius: BorderRadius.circular(50.r),
      borderSide: BorderSide(
        color: dark.withOpacity(0.7),
      ),
    );

    return TextFormField(
      onTap: widget.func,
      readOnly: widget.func != null ? true : false,
      controller: widget.controller,
      obscureText: widget.hasPref ? isActive : false,
      keyboardType:
          widget.isCenter != null ? TextInputType.number : TextInputType.text,
      textAlign: widget.isCenter != null ? TextAlign.center : TextAlign.start,
      maxLength: widget.isCenter != null ? 6 : null,
      maxLengthEnforcement: null,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
        counterText: "",
        enabledBorder: style,
        border: style,
        focusedBorder: style,
        disabledBorder: style,
        hintText: widget.text,
        hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 16.sp,
              color: lightGrey,
            ),
        suffixIcon: widget.icon != null
            ? InkWell(
                borderRadius: BorderRadius.circular(50.r),
                onTap: () {
                  setState(() {
                    isActive = !isActive;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.all(10.r),
                  child: SvgPicture.asset(
                    widget.icon!,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
