import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/utils/size_config.dart';
import 'package:invoicing_dashboard/presentation/widgets/detailed_income_chart.dart';
import 'package:invoicing_dashboard/presentation/widgets/income_chart.dart';
import 'package:invoicing_dashboard/presentation/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
  
    double width = MediaQuery.sizeOf(context).width;
    return width >=  SizeConfig.desktop && width < 1350 ?
     const Expanded(child: DetailedIncomeChart())
    : const Row(
     crossAxisAlignment : CrossAxisAlignment.center,
      children: [
        Expanded(
          child: IncomeChart(),
        ),
        Expanded(
          flex : 2,
          child: IncomeItemDetails(
          
        ))
      ],
    );
  }
}
