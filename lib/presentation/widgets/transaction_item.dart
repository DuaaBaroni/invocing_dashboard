import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/utils/colors.dart';
import 'package:invoicing_dashboard/core/utils/text_style.dart';
import 'package:invoicing_dashboard/models/transaction_model.dart';

class TransctionItem extends StatelessWidget {
  const TransctionItem({super.key, required this.transctionModel});

  final TransactionModel transctionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transctionModel.title,
          style:getTitleStyle(context,fontSize: 14)
        ),
        subtitle: Text(
          transctionModel.subtitle,
          style: getSmallStyle(context,fontSize: 12),
        ),
        trailing: Text(
          transctionModel.price,
          style: getTitleStyle(
                    context,fontSize: 14,
                    color: transctionModel.isWithdrawl
                        ? AppColors.red
                        : AppColors.green,
                  )
        ),
      ),
    );
  }
}