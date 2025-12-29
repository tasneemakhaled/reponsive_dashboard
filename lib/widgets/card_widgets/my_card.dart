import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: ShapeDecoration(
            color: Color(0xff4EB7F2),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(Assets.imagesCardBackground),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  trailing: SvgPicture.asset(Assets.imagesGallery),
                  subtitle: Text(
                    'Syah Bandi',
                    style: AppStyles.styleMedium20(),
                  ),
                  title: Text(
                    'Name card',
                    style: AppStyles.styleRegular16().copyWith(
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
                Expanded(child: SizedBox()),
                Text(
                  '0918 8124 0042 8129',
                  style: AppStyles.styleSemiBold24().copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  '12/20 - 124',
                  style: AppStyles.styleRegular16().copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
