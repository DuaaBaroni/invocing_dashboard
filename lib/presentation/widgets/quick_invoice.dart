import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:invoicing_dashboard/core/utils/colors.dart';
import 'package:invoicing_dashboard/presentation/widgets/latest_transaction.dart';
import 'package:invoicing_dashboard/presentation/widgets/quick_invoice_form.dart';
import 'package:invoicing_dashboard/presentation/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
       decoration: BoxDecoration(
         color: AppColors.white,
         borderRadius: BorderRadius.circular(16),
       ),
        child:const Column(
           children: [
              QuickInvoiceHeader(),
               Gap(6),
               LatestTransaction(),
             Divider(
                color: Color(0xffF1F1F1),
               thickness: 1,
             ),
             QuickInvoiceForm()
           ],
        ), 
    );
  }
}