import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:chinni_buyumlar/app/ui/screens/filter/filter_screen.dart';

class PressedScreen extends StatelessWidget {
  const PressedScreen({
    super.key,
    required this.title,
    required this.type,
  });
  final String title;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: transparent,
        elevation: 0,
        surfaceTintColor: transparent,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(AppIcons.arrowBack),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownButton(
                    iconEnabledColor: greyText.withOpacity(0.7),
                    underline: null,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 17.sp,
                          color: greyText.withOpacity(0.7),
                        ),
                    items: const [
                      DropdownMenuItem(
                        child: Text(
                          "Популярные",
                        ),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FilterScreen(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          "Фильтры",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 17.sp,
                                    color: green,
                                  ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        SvgPicture.asset(AppIcons.filter),
                      ],
                    ),
                  ),
                ],
              ),
              GridListWidget(
                type: type,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
