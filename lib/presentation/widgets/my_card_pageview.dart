import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/presentation/widgets/credit_card.dart';

class MyCardPageview extends StatelessWidget {
  const MyCardPageview({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(3, (index) {
        return const CreditCard();
        }
      ),
    );
  }
}
