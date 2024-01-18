
import 'package:anointing_web_project/helper/shared_pref.dart';
import 'package:auto_route/auto_route.dart';

class RouteGuard extends AutoRedirectGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {

    bool login=await SharedPref.getBool(key: "login");
    print(login);
    print(router.currentPath);
    if(router.currentPath.contains("/login")){
      if(await SharedPref.getBool(key: "login") == true){
        router.pushNamed('/home/dashboard');
      }
      else{

      }
    }
    if(router.currentPath.contains("/home")){
      if(await SharedPref.getBool(key:'login') == false||await SharedPref.getBool(key:'login') == null){
        if(router.currentPath == "/login"){
          router.pushNamed("/login");
        }else{
          if(router.currentPath.contains("/home")){
            router.pushNamed("/login");
            resolver.next();
          }}}
      else{
        resolver.next();
      }
    }else{
      resolver.next();
    }
  }

// router.pushNamed("/home-page/projects");
  // preferences.getBool("remember_me") == true ? router.push(const HomeRoute()) : router.push(const LoginRoute());

  @override
  Future<bool> canNavigate(RouteMatch route) {
    return Future.value(true);
  }
}
