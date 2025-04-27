import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:invoicing_dashboard/core/utils/colors.dart';
import 'package:invoicing_dashboard/core/utils/text_style.dart';
import 'package:invoicing_dashboard/presentation/widgets/custom_button.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text("Customer name", style: getTitleStyle(context)),
            ),
            Expanded(
              child: Text("Customer email", style: getTitleStyle(context)),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: AppColors.background,
                  filled: true,
                  border: InputBorder.none,
                  hintText: "Type customer name",
                  hintStyle: getBodyStyle(context ,color: AppColors.grey, fontSize: 14),
                ),
              ),
            ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: AppColors.background,
                  filled: true,
                  border: InputBorder.none,
                  hintText: "Type customer email",
                  hintStyle: getBodyStyle(context ,color: AppColors.grey, fontSize: 14),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text("Item name", style: getTitleStyle(context)),
            ),
            Expanded(
              child: Text("Item mount", style: getTitleStyle(context)),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: AppColors.grey,
                  border: InputBorder.none,
                  hintText: "Type customer name",
                  hintStyle: getBodyStyle(context ,color: AppColors.grey, fontSize: 14),
                ),
              ),
            ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: AppColors.grey,
                  border: InputBorder.none,
                  hintText: "USD",
                  hintStyle: getBodyStyle(context ,color: AppColors.grey, fontSize: 14),
                ),
              ),
            ),
          ],
        ),
        const Gap(10),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: "Add more details",
                textColor: AppColors.blue,
                backgourndColor: AppColors.white,
              ),
            ),
            const Expanded(
              child: CustomButton(
                text: "Send money",
              ),
            )
          ],
        )
      ],
    );
  }
}
