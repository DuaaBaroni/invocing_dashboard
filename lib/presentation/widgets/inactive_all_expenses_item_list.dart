// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:invoicing_dashboard/core/utils/colors.dart';
import 'package:invoicing_dashboard/core/utils/text_style.dart';
import 'package:invoicing_dashboard/models/all_expenses_item_model.dart';
import 'package:invoicing_dashboard/presentation/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItemList extends StatelessWidget {
  const InActiveAllExpensesItemList({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.only(top: 16, bottom: 16, right: 20, left: 20),
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.grey.withOpacity(0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
          ),
          Gap(10),
          FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(itemModel.title, style: getTitleStyle(context))),
          Gap(5),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(itemModel.date,
                style: getTitleStyle(context).copyWith(color: AppColors.white)),
          ),
          Gap(8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(itemModel.price,
                style: getTitleStyle(context).copyWith(color: AppColors.white)),
          ),
        ],
      ),
    );
  }
}
