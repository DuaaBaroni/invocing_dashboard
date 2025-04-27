import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:invoicing_dashboard/presentation/widgets/all_expenses_and_quick_invoice.dart';
import 'package:invoicing_dashboard/presentation/widgets/custom_drawer.dart';
import 'package:invoicing_dashboard/presentation/widgets/income_section.dart';
import 'package:invoicing_dashboard/presentation/widgets/my_card_and_transaction_history.dart';

class DesktopDashboardLayout extends StatelessWidget {
  const DesktopDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(flex: 2, child: AllExpensesAndQuickInvoiceSection()),
                    Gap(8),
                    Expanded(
                        child: Column(
                      children: [
                        MyCardAndTransactionHistory(),
                        Gap(10),
                        Expanded(
                          child: IncomeSection(),
                        ),
                      ],
                    )
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
