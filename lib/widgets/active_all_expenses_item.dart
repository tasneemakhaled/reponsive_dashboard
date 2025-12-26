import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class ActiveAllEXpensesItem extends StatelessWidget {
  const ActiveAllEXpensesItem({super.key, required this.allExpensesItemModel});

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff4EB7F2),
      child: Container(
        // height: 180,
        // width: 150,
        decoration: BoxDecoration(
          // boxShadow: [BoxShadow()],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                        color: Colors.white.withOpacity(0.10000000149011612),
                        shape: OvalBorder(),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          allExpensesItemModel.image,
                          colorFilter: ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.white),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                allExpensesItemModel.title,
                style: AppStyles.styleSemiBold16().copyWith(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'April 2022',
                style: AppStyles.styleRegular14().copyWith(
                  color: Color(0xffFAFAFA),
                ),
              ),
              SizedBox(height: 10),
              Text(
                '\$20,129',
                style: AppStyles.styleSemiBold24().copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//  \$ == r'$'