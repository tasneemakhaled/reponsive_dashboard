import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import 'package:responsive_dashboard/widgets/card_widgets/my_card.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandablePageView(
          controller: pageController,
          scrollDirection: Axis.horizontal,
          children: List.generate(3, (index) {
            return MyCard();
          }),
        ),
        // SizedBox(
        //   height: 200,
        //   child: PageView.builder(
        //     scrollDirection: Axis.horizontal,
        //     itemCount: 3,
        //     onPageChanged: (value) {
        //       setState(() {
        //         currentIndex = value;
        //       });
        //     },
        //     itemBuilder: (context, index) {
        //       return MyCard();
        //     },
        //   ),
        // ),
       
        // Row(
        //   children: [
        //     Container(
        //       width: currentIndex == 0 ? 32 : 8,
        //       height: 8,
        //       decoration: BoxDecoration(
        //         color: currentIndex == 0
        //             ? Color(0xff4EB7F2)
        //             : Color(0xffE8E8E8),
        //         borderRadius: BorderRadius.circular(12),
        //       ),
        //     ),
        //     const SizedBox(width: 8),
        //     Container(
        //       width: currentIndex == 1 ? 32 : 8,
        //       height: 8,
        //       decoration: BoxDecoration(
        //         color: currentIndex == 1
        //             ? Color(0xff4EB7F2)
        //             : Color(0xffE8E8E8),
        //         borderRadius: BorderRadius.circular(12),
        //       ),
        //     ),
        //     const SizedBox(width: 8),
        //     Container(
        //       width: currentIndex == 2 ? 32 : 8,
        //       height: 8,
        //       decoration: BoxDecoration(
        //         color: currentIndex == 2
        //             ? Color(0xff4EB7F2)
        //             : Color(0xffE8E8E8),
        //         borderRadius: BorderRadius.circular(12),
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
