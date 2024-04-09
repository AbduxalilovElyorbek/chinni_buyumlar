import 'package:chinni_buyumlar/app/constants/imports.dart';

class LeaveReviewWidget extends StatelessWidget {
  const LeaveReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        height: 400.h,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Оставьте отзыв",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const StarRating(),
            SizedBox(
              height: 170.h,
              width: double.infinity,
              child: TextField(
                maxLines: null,
                expands: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 20.h,
                  ),
                  isCollapsed: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: inputColor,
                  filled: true,
                  hintText: "Ваш комментарий...",
                  hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: lightGreyText,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
            const ButtonWidget(
              text: "Отправить",
              start: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ],
        ),
      ),
    );
  }
}
