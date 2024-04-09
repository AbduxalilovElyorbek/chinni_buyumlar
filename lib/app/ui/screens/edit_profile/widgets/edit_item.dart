import 'package:chinni_buyumlar/app/constants/imports.dart';

class EditWidget extends StatelessWidget {
  const EditWidget({
    super.key,
    required this.title,
    this.isNum,
    this.controller,
    this.func,
    this.date,
    this.isDropDownButton,
  });
  final String title;
  final bool? isNum;
  final TextEditingController? controller;
  final VoidCallback? func;
  final String? date;
  final bool? isDropDownButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: dropDown,
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
              ),
        ),
        SizedBox(
          height: 10.h,
        ),
        isDropDownButton != null
            ? const DropDownButton(
                items: [],
              )
            : TextField(
                onTap: func,
                readOnly: func != null ? true : false,
                controller: controller,
                keyboardType:
                    isNum != null ? TextInputType.number : TextInputType.name,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 20.h,
                  ),
                  hintText: date,
                  hintStyle: TextStyle(color: dark),
                  isCollapsed: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: lightGrey.withOpacity(0.1),
                  filled: true,
                ),
              ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
