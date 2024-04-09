import 'package:chinni_buyumlar/app/constants/imports.dart';

class StarRating extends StatefulWidget {
  const StarRating({super.key});

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  int _rating = 0;

  void rate(int rating) {
    setState(() {
      _rating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            child: SvgPicture.asset(
              _rating >= 1 ? AppIcons.filledStar : AppIcons.star,
            ),
            onTap: () => rate(1),
          ),
          GestureDetector(
            child: SvgPicture.asset(
              _rating >= 2 ? AppIcons.filledStar : AppIcons.star,
            ),
            onTap: () => rate(2),
          ),
          GestureDetector(
            child: SvgPicture.asset(
              _rating >= 3 ? AppIcons.filledStar : AppIcons.star,
            ),
            onTap: () => rate(3),
          ),
          GestureDetector(
            child: SvgPicture.asset(
              _rating >= 4 ? AppIcons.filledStar : AppIcons.star,
            ),
            onTap: () => rate(4),
          ),
          GestureDetector(
            child: SvgPicture.asset(
              _rating >= 5 ? AppIcons.filledStar : AppIcons.star,
            ),
            onTap: () => rate(5),
          ),
        ],
      ),
    );
  }
}
