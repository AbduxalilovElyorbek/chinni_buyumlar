import 'package:chinni_buyumlar/app/constants/imports.dart';

class PlecingDropDownWidget extends StatelessWidget {
  const PlecingDropDownWidget({
    super.key,
    required this.title,
    required this.functions,
  });

  final String title;
  final List<Widget> functions;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: const Border(),
      trailing: const SizedBox(),
      dense: false,
      childrenPadding: EdgeInsets.symmetric(horizontal: 20.w),
      tilePadding: EdgeInsets.symmetric(horizontal: 20.w),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: grey,
              fontWeight: FontWeight.w400,
            ),
      ),
      children: functions,
    );
  }
}
