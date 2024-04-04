import 'package:chinni_buyumlar/app/constants/imports.dart';

class CommentsList extends StatelessWidget {
  const CommentsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        itemCount: 5,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => SizedBox(
          height: 10.h,
        ),
        itemBuilder: (context, index) => const CommentItem(),
      ),
    );
  }
}
