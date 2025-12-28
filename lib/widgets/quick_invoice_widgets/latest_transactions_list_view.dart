import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/latest_transaction_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_widgets/custom_latest_transaction.dart';

class LatestTransactionsListView extends StatelessWidget {
  const LatestTransactionsListView({super.key});
  static List<LatestTransactionModel> transactions = [
    LatestTransactionModel(
      image: Assets.imagesAvatar1,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
    LatestTransactionModel(
      image: Assets.imagesAvatar2,
      title: 'Josua Nunito',
      subTitle: 'Josh Nunito@gmail.com',
    ),
    LatestTransactionModel(
      image: Assets.imagesAvatar1,
      title: 'Josua Nunito',
      subTitle: 'Josh Nunito@gmail.com',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: transactions.map((e) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: CustomLatestTransaction(latestTransactionModel: e),
          );
        }).toList(),
      ),
    );
    // return SizedBox(
    //   height: 70,
    //   child: ListView.builder(
    //     itemCount: transactions.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //       return Padding(
    //         padding: const EdgeInsets.symmetric(horizontal: 8),
    //         child: IntrinsicWidth(
    //           child: CustomLatestTransaction(
    //             latestTransactionModel: transactions[index],
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
