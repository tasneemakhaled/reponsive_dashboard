import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.svgPicture,
    required this.title,
  });
  final SvgPicture svgPicture;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFFFFFF),
      child: Expanded(
        child: Container(
          // height: 180,
          width: 150,
          decoration: BoxDecoration(
            // boxShadow: [BoxShadow()],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: ShapeDecoration(
                          color: Color(0xffFAFAFA),
                          shape: OvalBorder(),
                        ),
                        child: svgPicture,
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(title, style: AppStyles.styleSemiBold16()),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('April 2022', style: AppStyles.styleRegular14()),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('20,129', style: AppStyles.styleSemiBold24()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
