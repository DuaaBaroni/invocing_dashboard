import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/presentation/views/dashboard_view.dart';

void main() {
  runApp(
    DevicePreview(
    enabled: false,
    builder: (context) =>  const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home:const  DashboardView()
    );
  } 
}
