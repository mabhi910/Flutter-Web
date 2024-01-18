import 'package:anointing_web_project/routes/route_guard.dart';
import 'package:auto_route/auto_route.dart';
import 'web_app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter{

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page,initial: true,path:'/login',keepHistory: false,guards: [RouteGuard()]),
    AutoRoute(page: HomeRoute.page,path:'/home',guards: [RouteGuard()],keepHistory: false,
        children: [
    AutoRoute(page: DashboardRoute.page,path: 'dashboard'),
    ]),
  ];

}