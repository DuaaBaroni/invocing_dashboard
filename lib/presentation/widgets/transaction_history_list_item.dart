import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/models/transaction_model.dart';
import 'package:invoicing_dashboard/presentation/widgets/transaction_item.dart';

class TransactionHistoryListItem extends StatelessWidget {
  const TransactionHistoryListItem({super.key});

  static const transactionitems = [
    TransactionModel(
        title: "Cash Withdrawal",
        subtitle: "13 Apr, 2022 ",
        price: r"$20,129",
        isWithdrawl: true),
    TransactionModel(
        title: "Landing Page project",
        subtitle: "13 Apr, 2022 at 3:30 PM",
        price: r"$2,000",
        isWithdrawl: false),
    TransactionModel(
      title: "Juni Mobile App project",
      subtitle: "13 Apr, 2022 at 3:30 PM",
      price: r"$20,129",
      isWithdrawl: false,
    ),
  ];
  @override

  Widget build(BuildContext context) {
        return Column(
      children: transactionitems.map((e) => TransctionItem(transctionModel: e)).toList(),
    ); 
    
    // return ListView.builder(
    //     itemCount: transactionitems.length,
    //     shrinkWrap: true,
    //     itemBuilder: (context, index) {
    //       return Card(
    //         elevation: 0,
    //         color: const Color(0xFFFAFAFA),
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(12),
    //         ),
    //         child: ListTile(
    //           title:
    //               Text(transactionitems[index].title, style: getTitleStyle(fontSize: 14)),
    //           subtitle: Text(
    //             transactionitems[index].subtitle,
    //             style: getSmallStyle(fontSize: 12),
    //           ),
    //           trailing: Text(transactionitems[index].price,
    //               style: getTitleStyle(
    //                 fontSize: 14,
    //                 color: transactionitems[index].isWithdrawl
    //                     ? AppColors.red
    //                     : AppColors.green,
    //               )),
    //         ),
    //       );
    //     });
  }
}
