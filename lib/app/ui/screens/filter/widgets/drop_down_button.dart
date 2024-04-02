import 'package:chinni_buyumlar/app/constants/imports.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({
    super.key,
  });

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.w,
      child: DropdownButtonFormField(
        icon: SvgPicture.asset(AppIcons.arrowBottom),
        iconEnabledColor: greyText.withOpacity(0.7),
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(45.r),
              borderSide: BorderSide.none),
          fillColor: lightGrey.withOpacity(0.1),
          filled: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
        ),
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 17.sp,
              color: greyText.withOpacity(0.7),
            ),
        items: const [
          DropdownMenuItem(
            child: Text(
              "Сум",
            ),
          ),
        ],
        onChanged: (value) {},
      ),
    );
  }
}
