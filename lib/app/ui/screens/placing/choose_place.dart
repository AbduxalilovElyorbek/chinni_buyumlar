import 'package:chinni_buyumlar/app/constants/imports.dart';

class ChooseMap extends StatelessWidget {
  const ChooseMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 120.h,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackWidget(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Text(
                LocaleKeys.pickup_points,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),
          ],
        ),
      ),
      body: const Column(
        children: [
          Expanded(
            child: GoogleMap(
              mapType: MapType.normal,
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              initialCameraPosition: CameraPosition(
                target: LatLng(37.7749, -122.4194),
                zoom: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
