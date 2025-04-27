import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/presentation/widgets/all_expenses.dart';
import 'package:invoicing_dashboard/presentation/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: AllExpenses(),
        ),
        QuickInvoice(),
      ],
    );
  }
}
