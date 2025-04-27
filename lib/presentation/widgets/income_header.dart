
import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/utils/colors.dart';
import 'package:invoicing_dashboard/core/utils/text_style.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
  });
  @override

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Income", style:  getTitleStyle(context),
        ),
        Container(
          padding:const EdgeInsets.all(8),
           decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(16),
           ),
           child: Text("montly", style: getTitleStyle(context,fontWeight: FontWeight.normal),
           ),
        ),
      ],
    );
  }
}