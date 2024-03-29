import 'package:anointing_web_project/routes/web_app_router.dart';
import 'package:anointing_web_project/routes/web_app_router.gr.dart';
import 'package:anointing_web_project/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// final AppRouter _appRouter = AppRouter(routeGuard: RouteGuard(),navigatorKey: navigatorKey);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // routeInformationParser: _appRouter.defaultRouteParser(),
      // routerDelegate: _appRouter.delegate(),
      routerConfig: appRouter.config(initialRoutes: [LoginRoute()]),
    );
  }
}
