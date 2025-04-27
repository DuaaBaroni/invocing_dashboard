// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/models/all_expenses_item_model.dart';
import 'package:invoicing_dashboard/presentation/widgets/active_all_expenses_item_list.dart';
import 'package:invoicing_dashboard/presentation/widgets/inactive_all_expenses_item_list.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isSelected});

  final AllExpensesItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? InActiveAllExpensesItemList(itemModel: itemModel)
        : ActiveAllExpensesItemList(itemModel: itemModel);
  }
}
