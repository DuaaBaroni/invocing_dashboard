import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/utils/text_style.dart';
import 'package:invoicing_dashboard/presentation/widgets/transaction_history_header.dart';
import 'package:invoicing_dashboard/presentation/widgets/transaction_history_list_item.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        Text("13 April 2022", style: getSmallStyle(context, fontSize: 12)
        ),
      
       const TransactionHistoryListItem()
      ],
    );
  }
}
 