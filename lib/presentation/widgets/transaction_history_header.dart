import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/utils/colors.dart';
import 'package:invoicing_dashboard/core/utils/text_style.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Transaction History",
          style: getTitleStyle(context, fontSize: 14),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "See all",
            style: getBodyStyle(context, color: AppColors.blue, fontSize: 12),
          ),
        )
      ],
    );
  }
}
