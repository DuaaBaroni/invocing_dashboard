// ignore_for_file: deprecated_member_use, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/utils/colors.dart';
import 'package:invoicing_dashboard/models/drawer_item_model.dart';
import 'package:invoicing_dashboard/presentation/widgets/drawer_item.dart';
import 'package:invoicing_dashboard/presentation/widgets/drawer_item_list.dart';
import 'package:invoicing_dashboard/presentation/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: AppColors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column (
              children: [
                Expanded (
                    child: SizedBox(
                  height: 20,
                )),
                DrawerItem(
                  isActive: false,
                  drawerItemModel: DrawerItemModel(
                    image: "assets/setting-2.svg",
                    title: "Settings system",
                  ),
                ),
                DrawerItem(
                  isActive: false,
                  drawerItemModel: DrawerItemModel(
                    image: "assets/logout.svg",
                    title: "Logout account",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
