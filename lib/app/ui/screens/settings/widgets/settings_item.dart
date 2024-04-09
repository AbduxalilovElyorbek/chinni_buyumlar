import 'package:chinni_buyumlar/app/constants/imports.dart';

class SettingsItem extends StatefulWidget {
  const SettingsItem({super.key, required this.title});
  final String title;

  @override
  State<SettingsItem> createState() => _SettingsItemState();
}

class _SettingsItemState extends State<SettingsItem> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 17.sp,
                color: lightGreyText,
              ),
        ),
        SwitcherWidget(
          borderColor: lightGreen,
          dotColor: green,
          isActive: isActive,
          func: (p0) {
            isActive = !isActive;
            setState(() {});
          },
        )
      ],
    );
  }
}
