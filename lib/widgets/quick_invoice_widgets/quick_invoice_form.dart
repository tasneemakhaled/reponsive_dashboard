import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item Name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: TitleTextField(title: 'Item Mount', hint: 'USD'),
            ),
            // CustomTextField(hint: 'Type customer name'),
            // Container(
            //   padding: EdgeInsets.all(8),
            //   decoration: ShapeDecoration(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(12),
            //       side: BorderSide(width: 1, color: Color(0xffF1F1F1)),
            //     ),
            //     color: Color(0xffFFFFFF),
            //   ),
            //   child: Row(
            //     children: [
            //       Text('USD', style: AppStyles.styleMedium16()),
            //       SizedBox(width: 10),
            //       Icon(Icons.arrow_drop_down, color: Color(0xff064061)),
            //     ],
            //   ),
            // ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SizedBox(
                height: 50,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Add More Details',
                    style: TextStyle(
                      color: Color(0xff4EB7F2),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 24),
            Expanded(child: CustomButton()),
          ],
        ),
      ],
    );
  }
}
