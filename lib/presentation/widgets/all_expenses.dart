import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:invoicing_dashboard/core/utils/colors.dart';
import 'package:invoicing_dashboard/presentation/widgets/all_expenses_header.dart';
import 'package:invoicing_dashboard/presentation/widgets/all_expenses_item_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(10),
       decoration: BoxDecoration(
         color: AppColors.white,
         borderRadius: BorderRadius.circular(16),
       ),
       child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           AllExpensesHeader(),
           Gap(10),
             AllExpensesItemListView()
         ],
       ),
    );
  }
}


