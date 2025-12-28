import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/latest_transaction_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_widgets/custom_latest_transaction.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_widgets/custom_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});
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
      image: Assets.imagesAvatar3,
      title: 'Josua Nunito',
      subTitle: 'Josh Nunito@gmail.com',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Quick Invoice', style: AppStyles.styleSemiBold20()),
              IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            ],
          ),
          SizedBox(height: 15),
          Align(
            alignment: Alignment.topLeft,
            child: Text('Latest Transaction', style: AppStyles.styleMedium16()),
          ),
          SizedBox(height: 8),
          SizedBox(
            height: 80,
            child: ListView.builder(
              itemCount: transactions.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomLatestTransaction(
                    latestTransactionModel: transactions[index],
                  ),
                );
              },
            ),
          ),
          Divider(color: Color(0xffF1F1F1)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Customer name'), Text('Customer Email')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextField(hint: 'Type customer name'),
              CustomTextField(hint: 'Type customer email'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Item name'), Text('Item mount')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextField(hint: 'Type customer name'),
              Container(
                padding: EdgeInsets.all(8),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(width: 1, color: Color(0xffF1F1F1)),
                  ),
                  color: Color(0xffFFFFFF),
                ),
                child: Row(
                  children: [
                    Text('USD', style: AppStyles.styleMedium16()),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_drop_down, color: Color(0xff064061)),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Add More Details',
                style: TextStyle(
                  color: Color(0xff4EB7F2),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 60,
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff4EB7F2),
                  ),
                  onPressed: () {},
                  child: Text('Send Money', style: AppStyles.styleSemiBold18()),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
