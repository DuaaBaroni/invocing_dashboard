import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:invoicing_dashboard/presentation/widgets/custom_drawer.dart';
import 'package:invoicing_dashboard/presentation/widgets/dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        Gap(10),
        Expanded(flex: 3, child: DashboardMobileLayout()),
        Gap(10),
      ],
    );
  }
}
