import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/utils/colors.dart';
import 'package:invoicing_dashboard/core/utils/text_style.dart';
import 'package:invoicing_dashboard/models/income_details_model.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.incomeDetailsModel});

  final IncomeDetailsModel incomeDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(incomeDetailsModel.title,
          style: getTitleStyle(context,fontWeight: FontWeight.normal, fontSize: 14)),
      trailing: Text(
        incomeDetailsModel.value,
        style:
            getTitleStyle(context,fontWeight: FontWeight.normal, color: AppColors.blue, fontSize: 14),
      ),
    );
  }
}
