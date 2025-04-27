import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/utils/colors.dart';
import 'package:invoicing_dashboard/core/utils/size_config.dart';
import 'package:invoicing_dashboard/presentation/widgets/adaptive_layout.dart';
import 'package:invoicing_dashboard/presentation/widgets/custom_drawer.dart';
import 'package:invoicing_dashboard/presentation/widgets/dashboard_desktop_layout.dart';
import 'package:invoicing_dashboard/presentation/widgets/dashboard_mobile_layout.dart';
import 'package:invoicing_dashboard/presentation/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {


  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      key: scaffoldKey,
        appBar: MediaQuery.of(context).size.width < SizeConfig.tablet
            ? AppBar(
                leading: IconButton(
                    onPressed: () {
                       scaffoldKey.currentState?.openDrawer();
                 },
                    icon: Icon(Icons.menu, color: AppColors.primary)),
              )
            : null,
            drawer: MediaQuery.of(context).size.width < SizeConfig.tablet ? const CustomDrawer() : null,
        body: AdaptiveLayout(
          mobileLayout: (context) => const DashboardMobileLayout(),
          tabletLayout: (context) => const DashboardTabletLayout(),
          desktopLayout: (context) => const DesktopDashboardLayout(),
        ));
  }
}
