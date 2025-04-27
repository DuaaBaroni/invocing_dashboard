// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/models/drawer_item_model.dart';
import 'package:invoicing_dashboard/presentation/widgets/drawer_item.dart';

class DrawerItemList extends StatefulWidget {
  const DrawerItemList({
    super.key,
  });

  @override
  State<DrawerItemList> createState() => _DrawerItemListState();
}

class _DrawerItemListState extends State<DrawerItemList> {
  static List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: "Dashboard", image: "assets/dashboard.svg"),
    DrawerItemModel(title: "My Transaction", image: "assets/transaction.svg"),
    DrawerItemModel(title: "Statistics", image: "assets/statistics.svg"),
    DrawerItemModel(title: "Wallet Account", image: "assets/wallet-2.svg"),
    DrawerItemModel(title: "My Investments", image: "assets/investment.svg"),
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder (
        itemCount: drawerItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                  print("Active index: $activeIndex");
                 }
               );
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DrawerItem(
                  drawerItemModel: drawerItems[index],
                  isActive: activeIndex == index
              ),
            ),
          );
        }
      );
    }
  }
