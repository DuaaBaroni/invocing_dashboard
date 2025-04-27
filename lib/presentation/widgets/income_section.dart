import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/utils/colors.dart';
import 'package:invoicing_dashboard/presentation/widgets/income_header.dart';
import 'package:invoicing_dashboard/presentation/widgets/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(
        children: [
          IncomeHeader(),
          IncomeSectionBody()
        ],
      ),
    );
  }
}

