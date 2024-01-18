import 'package:anointing_web_project/helper/app_strings.dart';
import 'package:anointing_web_project/routes/web_app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: GestureDetector(
        onTap: (){
          context.router.replace(const HomeRoute());
        },
        child: const Text(Strings.welcomeLogin),
      )),
    );
  }
}
