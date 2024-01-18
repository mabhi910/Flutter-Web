import 'package:auto_route/auto_route.dart';
import 'web_app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter{

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page,initial: true,path:'/login',keepHistory: false,),
    AutoRoute(page: HomeRoute.page,path:'/home',keepHistory: false,
        children: [
    AutoRoute(page: DashboardRoute.page,path: 'dashboard'),
    ]),
  ];

}