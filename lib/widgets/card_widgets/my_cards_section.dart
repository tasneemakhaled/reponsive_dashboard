import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/card_widgets/my_card_page_view.dart';
import 'package:responsive_dashboard/widgets/card_widgets/dots_indicator.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My card', style: AppStyles.styleSemiBold20()),
        MyCardPageView(pageController: pageController),
        DotsIndicator(currentPageIndex: currentPageIndex),
      ],
    );
  }
}
