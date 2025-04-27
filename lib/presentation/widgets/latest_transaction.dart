import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:invoicing_dashboard/core/utils/text_style.dart';
import 'package:invoicing_dashboard/presentation/widgets/quick_invoice_item_list.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Latest Transaction",
            style: getTitleStyle(context ,fontWeight: FontWeight.w500)),
        const Gap(16),
        const QuickInvoiceListItem()
      ],
    );
  }
}
