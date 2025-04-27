import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/models/income_details_model.dart';
import 'package:invoicing_dashboard/presentation/widgets/income_section_item.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({super.key});

  static const incomeDetails = [
    IncomeDetailsModel(
        color: Color(0xff208CC8), title: "Design Services", value: "40%"),
    IncomeDetailsModel(
        color: Color(0xff4EB7F2), title: "Design Product", value: "25%"),
    IncomeDetailsModel(
        color: Color(0xff064061), title: "Product Royalty", value: "20%"),
    IncomeDetailsModel(color: Color(0xffE2DECD), title: "Other", value: "22%"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          incomeDetails.map((e) => ItemDetails(incomeDetailsModel: e)).toList(),
    );
  }
}
