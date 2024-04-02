import 'package:chinni_buyumlar/app/constants/imports.dart';

class DropDownItem extends StatelessWidget {
  const DropDownItem({
    super.key,
    required this.title,
    required this.functions,
  });
  final String title;
  final List<Widget> functions;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      childrenPadding: EdgeInsets.symmetric(horizontal: 20.w),
      tilePadding: EdgeInsets.symmetric(horizontal: 20.w),
      shape: const Border(),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: dropDown,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
            ),
      ),
      children: functions,
    );
  }
}
