import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/utils/text_style.dart';
import 'package:invoicing_dashboard/presentation/widgets/range_option.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("All Expenses", style: getTitleStyle(context)),
        const RangeOption(),
      ],
    );
  }
}
