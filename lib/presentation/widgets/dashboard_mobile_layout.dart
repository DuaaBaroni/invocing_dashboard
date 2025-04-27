
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:invoicing_dashboard/presentation/widgets/all_expenses_and_quick_invoice.dart';
import 'package:invoicing_dashboard/presentation/widgets/income_section.dart';
import 'package:invoicing_dashboard/presentation/widgets/my_card_and_transaction_history.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          Gap(10),
          MyCardAndTransactionHistory(),
          Gap(10),
          IncomeSection()
        ],
      ),
    );
  }
}