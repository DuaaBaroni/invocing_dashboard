import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/models/all_expenses_item_model.dart';
import 'package:invoicing_dashboard/presentation/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({
    super.key,
  });

  static const items = [
    AllExpensesItemModel(
        image: "assets/moneys.svg",
        title: "Balance",
        date: "April 2025",
        price: r"$20,129"),
    AllExpensesItemModel(
        image: "assets/card-receive.svg",
        title: "Income",
        date: "April 2025",
        price: r"$20,129"),
    AllExpensesItemModel(
        image: "assets/card-send.svg",
        title: "Expense",
        date: "April 2025",
        price: r"$20,129"),
  ];

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

int selectedIndex = 0;

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: AllExpensesItemListView.items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: AllExpensesItem(
                isSelected: selectedIndex == index,
                itemModel: item,
              ),
            ),
          ),
        );
       }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
