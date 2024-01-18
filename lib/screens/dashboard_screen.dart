import 'package:anointing_web_project/helper/app_strings.dart';
import 'package:anointing_web_project/widgets/nav_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
@RoutePage()
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: <Widget>[

      ],),
    );
  }
}
