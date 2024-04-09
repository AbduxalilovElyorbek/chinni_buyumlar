import 'package:chinni_buyumlar/app/constants/imports.dart';

class SwitcherWidget extends StatelessWidget {
  const SwitcherWidget({
    super.key,
    required this.isActive,
    required this.func,
    required this.borderColor,
    required this.dotColor,
  });
  final bool isActive;
  final void Function(bool)? func;
  final Color borderColor;
  final Color dotColor;

  @override
  Widget build(BuildContext context) {
    return Switch(
      onChanged: func,
      activeTrackColor: borderColor,
      activeColor: dotColor,
      inactiveTrackColor: borderColor,
      value: isActive,
    );
  }
}
