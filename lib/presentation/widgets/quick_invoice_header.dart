// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/utils/colors.dart';
import 'package:invoicing_dashboard/core/utils/text_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("Quick Invoice", style: getTitleStyle(context)),
      CircleAvatar(
        backgroundColor: AppColors.grey.withOpacity(0.1),
        child: IconButton(
            onPressed: () {}, icon: Icon(Icons.add, color: AppColors.blue)),
      ),
    ]);
  }
}
