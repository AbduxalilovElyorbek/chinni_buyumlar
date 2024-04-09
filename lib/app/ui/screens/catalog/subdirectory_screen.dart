import 'package:chinni_buyumlar/app/constants/imports.dart';

class SubdirectoryScreen extends StatelessWidget {
  const SubdirectoryScreen({super.key, required this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const BackWidget(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const CatalogList(
                isSub: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
