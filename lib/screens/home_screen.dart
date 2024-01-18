import 'package:anointing_web_project/helper/app_strings.dart';
import 'package:anointing_web_project/routes/web_app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widgets/course_details.dart';
@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool pressed = false;
  String route = '';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    route = ModalRoute.of(context)!.settings.name.toString();
    debugPrint("route: $route");
    return  LayoutBuilder(builder: (BuildContext ctx, BoxConstraints constraints) {
      if (width > 700) {
        return Scaffold(
          body: Stack(
              children:[
                Row(
                  children: [
                    Container(
                      width: pressed == false? 200 : 70,
                      color: Colors.orange,
                      alignment: Alignment.topLeft,
                      child: Column(
                        mainAxisAlignment:pressed == false? MainAxisAlignment.start:MainAxisAlignment.start,
                        crossAxisAlignment: pressed == false?CrossAxisAlignment.start:CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment:pressed == false? MainAxisAlignment.start:MainAxisAlignment.center,
                            crossAxisAlignment: pressed == false?CrossAxisAlignment.start:CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  width: width,
                                  color: Colors.brown,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius:pressed == false? 50:20,
                                    child: Image.asset('assets/quiz logo.png'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: width,
                            height: height*0.76,
                            child: Column(
                              children: [
                                SizedBox(height: 20,),
                                InkWell(
                                  onTap: (){
                                    context.watchRouter.pushNamed("dashboard");
                                    setState(() {
                                    });
                                  },
                                  child: Container(
                                    color: context.router.isPathActive('dashboard')? Color(0xFFFFF7F7)   :Colors.white,
                                    child: Row(
                                      children: [
                                        context.router.isPathActive('dashboard')? Container(width: 2,height: height * 0.06,color:  Colors.red):Text(""),
                                        SizedBox(width: 30,),
                                        Icon(Icons.grid_view, color: context.router.isPathActive('dashboard') ? Color(0xFFE82717):Color(0xFF5F5F5F),size: 20,),
                                        SizedBox(width: 5,),
                                        Visibility(
                                          visible:  pressed == false ? true : false,
                                          child: Text("Dashboard",
                                            // style: TextStyle(
                                            //   fontSize: width * 0.012,
                                            //   color: context.router.isPathActive(RouteConst.dash) ? Colors.red : Colors.black,
                                            // ),
                                            style: TextStyle(fontSize: 14,fontFamily: 'Rubix',
                                                color:  context.router.isPathActive('dashboard') ? Color(0xFFE82717):Color(0xFF5F5F5F)
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                // SizedBox(height: 20,),
                                // InkWell(
                                //   onTap: (){
                                //     context.router.pushNamed("FrontEndUser");
                                //     setState(() {
                                //     });
                                //     print("fgddfghjlk${context.router.currentPath}");
                                //   },
                                //   child: Container(
                                //     color: context.router.isPathActive('FrontEndUser')? Color(0xFFFFF7F7)   :Colors.white,
                                //     width: width,
                                //     child: Row(
                                //       children: [
                                //         context.router.isPathActive('FrontEndUser')? Container(width: 2,height: height * 0.06,color:  Colors.red):Text(""),
                                //         SizedBox(width: 30,),
                                //         Icon(Icons.layers, color: context.router.isPathActive('FrontEndUser') ? Color(0xFFE82717):Color(0xFF5F5F5F),size: 20,),
                                //         SizedBox(width: 5,),
                                //         Visibility(
                                //           visible:  pressed == false ?true:false,
                                //           child: Text("FrontEndUser",
                                //             // style: TextStyle(
                                //             //   fontSize: width * 0.012,
                                //             //   color: context.router.isPathActive('FrontEndUser') ? Colors.red : Colors.black,
                                //             // ),
                                //             style: TextStyle(fontSize: 14,fontFamily: 'Rubix',
                                //                 color:  context.router.isPathActive('FrontEndUser')  ? Color(0xFFE82717):Color(0xFF5F5F5F)
                                //             ),
                                //           ),
                                //         )
                                //       ],
                                //     ),
                                //   ),
                                // ),
                                // SizedBox(height: 20,),
                                // InkWell(
                                //   onTap: (){
                                //     context.router.pushNamed("Kanlianuser");
                                //     setState(() {
                                //
                                //     });
                                //   },
                                //   child: Container(
                                //     color: context.router.isPathActive('Kanlianuser')? Color(0xFFFFF7F7)   :Colors.white,
                                //     width: width,
                                //     child: Row(
                                //       children: [
                                //         context.router.isPathActive('Kanlianuser')? Container(width: 2,height: height * 0.06,color:  Colors.red):Text(""),
                                //         SizedBox(width: 30,),
                                //         Icon(Icons.person, color: context.router.isPathActive('Kanlianuser') ? Color(0xFFE82717):Color(0xFF5F5F5F),size: 20,),
                                //         SizedBox(width: 5,),
                                //         Visibility(
                                //           visible:  pressed == false ?true:false,
                                //           child: Text("Kanlian user",
                                //             // style: TextStyle(
                                //             //   color: context.router.isPathActive('Kanlianuser') ? Colors.red : Colors.black,
                                //             //   fontSize: width * 0.012,
                                //             // ),
                                //             style: TextStyle(fontSize: 14,fontFamily: 'Rubix',
                                //                 color:  context.router.isPathActive('Kanlianuser') ? Color(0xFFE82717):Color(0xFF5F5F5F)
                                //             ),
                                //           ),
                                //         )
                                //       ],
                                //     ),
                                //   ),
                                // ),
                                // SizedBox(height: 20,),
                                // InkWell(
                                //   onTap: (){
                                //     context.router.pushNamed("BoatInformation");
                                //     setState(() {
                                //
                                //     });
                                //   },
                                //   child: Container(
                                //     color: context.router.isPathActive('BoatInformation')? Color(0xFFFFF7F7)   :Colors.white,
                                //     child: Row(
                                //       children: [
                                //         context.router.isPathActive('BoatInformation')? Container(width: 2,height: height * 0.06,color:  Colors.red):Text(""),
                                //         SizedBox(width: 30,),
                                //         Icon(Icons.directions_boat_outlined, color: context.router.isPathActive('BoatInformation') ? Color(0xFFE82717):Color(0xFF5F5F5F),size: 20,),
                                //         SizedBox(width: 5,),
                                //         Visibility(
                                //           visible:  pressed == false ?true:false,
                                //           child: Text("Boat Information",
                                //             // style: TextStyle(
                                //             //   fontSize: width * 0.012,
                                //             //   color: context.router.isPathActive('BoatInformation') ? Colors.red : Colors.black,
                                //             // ),
                                //             style: TextStyle(fontSize: 14,fontFamily: 'Rubix',
                                //                 color:  context.router.isPathActive('BoatInformation') ? Color(0xFFE82717):Color(0xFF5F5F5F)
                                //             ),
                                //           ),
                                //         )
                                //       ],
                                //     ),
                                //   ),
                                // ),
                                // SizedBox(height: 20,),
                                // InkWell(
                                //   onTap: (){
                                //     context.router.pushNamed("UserRolesAccess");
                                //     setState(() {
                                //
                                //     });
                                //   },
                                //   child: Container(
                                //     color: context.router.isPathActive('UserRolesAccess')?Color(0xFFFFF7F7)   :Colors.white,
                                //     width: width,
                                //     child: Row(
                                //       children: [
                                //         context.router.isPathActive('UserRolesAccess')? Container(width: 2,height: height * 0.06,color:  Colors.red):Text(""),
                                //         SizedBox(width: 30,),
                                //         Icon(Icons.person, color: context.router.isPathActive('UserRolesAccess') ?Color(0xFFE82717):Color(0xFF5F5F5F),size: 20,),
                                //         SizedBox(width: 5,),
                                //         Visibility(
                                //           visible:  pressed == false ?true:false,
                                //           child: Text("UserRoles & Access",
                                //             // style: TextStyle(
                                //             //   fontSize: width * 0.012,
                                //             //   color: context.router.isPathActive('UserRolesAccess') ? Colors.red : Colors.black,
                                //             // ),
                                //             style: TextStyle(fontSize: 14,fontFamily: 'Rubix',
                                //                 color:  context.router.isPathActive('UserRolesAccess') ? Color(0xFFE82717):Color(0xFF5F5F5F)
                                //             ),
                                //           ),
                                //         )
                                //       ],
                                //     ),
                                //   ),
                                // ),
                                // SizedBox(height: 20,),
                                // InkWell(
                                //   onTap: (){
                                //     context.router.pushNamed("Sales");
                                //     setState(() {});
                                //   },
                                //   child: Container(
                                //     color: context.router.isPathActive('Sales')? Color(0xFFFFF7F7)  :Colors.white,
                                //     width: width,
                                //     child: Row(
                                //       children: [
                                //         context.router.isPathActive('Sales')? Container(width: 2,height: height * 0.06,color:  Colors.red):Text(""),
                                //         SizedBox(width: 30,),
                                //         Icon(Icons.grid_view, color: context.router.isPathActive('Sales') ? Color(0xFFE82717):Color(0xFF5F5F5F),size: 20,),
                                //         SizedBox(width: 5,),
                                //         Visibility(
                                //           visible:  pressed == false ? true:false,
                                //           child: Text("Sales",
                                //             // style: TextStyle(
                                //             //   fontSize: width * 0.012,
                                //             //   color: context.router.isPathActive('Sales') ? Colors.red : Colors.black,
                                //             // ),
                                //             style: TextStyle(fontSize: 14,fontFamily: 'Rubix',
                                //                 color:  context.router.isPathActive('Sales') ? Color(0xFFE82717):Color(0xFF5F5F5F)
                                //             ),
                                //           ),
                                //         )
                                //       ],
                                //     ),
                                //   ),
                                // ),
                                // SizedBox(height: 20,),
                                // InkWell(
                                //   onTap: (){
                                //     context.router.pushNamed("Settings");
                                //     setState(() {
                                //
                                //     });
                                //   },
                                //   child: Container(
                                //     color: context.router.isPathActive('Settings')? Color(0xFFFFF7F7)  :Colors.white,
                                //     width: width,
                                //     child: Row(
                                //       children: [
                                //         context.router.isPathActive('Settings')? Container(width: 2,height: height * 0.06,color:  Colors.red):Text(""),
                                //         SizedBox(width: 30,),
                                //         Icon(Icons.settings, color: context.router.isPathActive('Settings') ? Color(0xFFE82717):Color(0xFF5F5F5F),size: 20,),
                                //         const SizedBox(width: 5,),
                                //         Visibility(
                                //           visible:  pressed == false ?true:false,
                                //           child: Text("Settings",
                                //             // style: TextStyle(
                                //             //   fontSize: width * 0.012,
                                //             //   color: context.router.isPathActive('Settings') ? Colors.red : Colors.black,
                                //             // ),
                                //             style: TextStyle(fontSize: 14,fontFamily: 'Rubix',
                                //                 color:  context.router.isPathActive('Settings') ? Color(0xFFE82717):Color(0xFF5F5F5F)
                                //             ),
                                //           ),
                                //         )
                                //       ],
                                //     ),
                                //   ),
                                // ),
                                Spacer(),
                                InkWell(
                                  onTap: (){
                                    // addEvent(logoutEvent(context: context));
                                    context.router.replace(LoginRoute());
                                    // context.router.navigationHistory.dispose();
                                    // context.router.topMostRouter();

                                  },
                                  child: Container(
                                    color: context.router.isPathActive('Logout')? Color(0xFFFFF7F7) :Colors.white,
                                    child: Row(
                                      children: [
                                        context.router.isPathActive('Logout')? Container(width: 2,height: height * 0.06,color:  Colors.red):Text(""),
                                        SizedBox(width: 30,),
                                        Icon(Icons.login_outlined, color: context.router.isPathActive('Logout') ? Color(0xFFE82717):Color(0xFF5F5F5F),size: 20,),
                                        SizedBox(width: 5,),
                                        Visibility(
                                          visible:  pressed == false ?true:false,
                                          child: Text("Logout",
                                            // style: TextStyle(
                                            //   fontSize: width * 0.012,
                                            //   color: context.router.isPathActive('Logout') ? Colors.red : Colors.black,
                                            // ),
                                            style: TextStyle(fontSize: 14,fontFamily: 'Rubix',
                                                color: context.router.isPathActive('Logout') ? Color(0xFFE82717):Color(0xFF5F5F5F)
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                // SizedBox(height: 20,),
                                // GestureDetector(
                                //   onTap: (){
                                //     context.router.pushNamed("Kanlianuser");
                                //     setState(() {
                                //
                                //     });
                                //   },
                                //
                                //   child: Row(
                                //     children: [
                                //       Icon(Icons.person, color: context.router.isPathActive('Kanlianuser') ? Colors.red : Colors.black),
                                //       SizedBox(width: 5,),
                                //       Text("Kanlianuser",
                                //         style: TextStyle(
                                //           color: context.router.isPathActive('Kanlianuser') ? Colors.red : Colors.black,
                                //         ),
                                //       )
                                //     ],
                                //   ),
                                // ),
                                // SizedBox(height: 20,),
                                // GestureDetector(
                                //   onTap: (){
                                //     context.router.pushNamed("BoatInformation");
                                //     setState(() {
                                //
                                //     });
                                //   },
                                //
                                //   child: Row(
                                //     children: [
                                //       Icon(Icons.directions_boat_filled_outlined, color: context.router.isPathActive('BoatInformation') ? Colors.red : Colors.black),
                                //       SizedBox(width: 5,),
                                //       Text("BoatInformation",
                                //         style: TextStyle(
                                //           color: context.router.isPathActive('BoatInformation') ? Colors.red : Colors.black,
                                //         ),
                                //       )
                                //     ],
                                //   ),
                                // ),
                                // SizedBox(height: 20,),
                                // GestureDetector(
                                //   onTap: (){
                                //     context.router.pushNamed("UserRolesAccess");
                                //     setState(() {
                                //
                                //     });
                                //   },
                                //
                                //   child: Row(
                                //     children: [
                                //       Icon(Icons.person, color: context.router.isPathActive('UserRolesAccess') ? Colors.red : Colors.black),
                                //       SizedBox(width: 5,),
                                //       Text("UserRolesAccess",
                                //         style: TextStyle(
                                //           color: context.router.isPathActive('UserRolesAccess') ? Colors.red : Colors.black,
                                //         ),
                                //       )
                                //     ],
                                //   ),
                                // ),
                                // SizedBox(height: 20,),
                                // GestureDetector(
                                //   onTap: (){
                                //     context.router.pushNamed("Sales");
                                //     setState(() {
                                //
                                //     });
                                //   },
                                //
                                //   child: Row(
                                //     children: [
                                //       Icon(Icons.mode_fan_off_outlined, color: context.router.isPathActive('Sales') ? Colors.red : Colors.black),
                                //       SizedBox(width: 5,),
                                //       Text("Sales",
                                //         style: TextStyle(
                                //           color: context.router.isPathActive('Sales') ? Colors.red : Colors.black,
                                //         ),
                                //       )
                                //     ],
                                //   ),
                                // ),
                                // SizedBox(height: 20,),
                                // GestureDetector(
                                //   onTap: (){
                                //     context.router.pushNamed("Settings");
                                //     setState(() {
                                //
                                //     });
                                //   },
                                //
                                //   child: Row(
                                //     children: [
                                //       Icon(Icons.settings, color: context.router.isPathActive('Settings') ? Colors.red : Colors.black),
                                //       SizedBox(width: 5,),
                                //       Text("Settings",
                                //         style: TextStyle(
                                //           color: context.router.isPathActive('Settings') ? Colors.red : Colors.black,
                                //         ),
                                //       )
                                //     ],
                                //   ),
                                // ),
                                // Spacer(),
                                // GestureDetector(
                                //   onTap: (){
                                //     context.router.pushNamed("Logout");
                                //     setState(() {
                                //
                                //     });
                                //   },
                                //
                                //   child: Row(
                                //     children: [
                                //       Icon(Icons.layers, color: context.router.isPathActive('Logout') ? Colors.red : Colors.black),
                                //       SizedBox(width: 5,),
                                //       Text("Logout",
                                //         style: TextStyle(
                                //           color: context.router.isPathActive('Logout') ? Colors.red : Colors.black,
                                //         ),
                                //       )
                                //     ],
                                //   ),
                                // ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                        width: pressed == false? width * 0.85 : width * 0.94,
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              width: pressed == false ? width * 0.853 : width,
                              height: 49,
                              color: Colors.black12,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ButtonBar(children: [
                                    // SizedBox(width: 30,),
                                    TextButton(onPressed: (){


                                    }, child: Text("Home")),
                                    TextButton(onPressed: (){}, child: Text("About")),
                                    Icon(Icons.keyboard_arrow_down_sharp),
                                  ],)
                                ],
                              ),
                            ),
                            Container(
                              width: width,
                              height: height * 0.922,
                              child: const AutoRouter(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],

                ),

                InkWell(
                  onTap: (){
                    setState(() {
                      pressed = !pressed;
                      print("fghjk${pressed}");
                    });
                  },
                  child: Container(
                      margin: EdgeInsets.only(left: pressed ==false ? 190 : 60,top: 12),
                      child: pressed == false ? CircleAvatar(backgroundColor: Colors.red,
                        radius: 12,
                        child: Align(alignment: Alignment.center,child: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.white,size: 15,)),
                      ) :
                      CircleAvatar(backgroundColor: Colors.red,
                        radius: 12,
                        child: Align(alignment: Alignment.center,child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15,)),
                      )
                  ),
                ),

              ]
          ),
        );
      } else {
        return AutoTabsRouter(
          // list of your tab routes
          // routes used here must be declared as children
          // routes of /dashboard
          routes: const [
            DashboardRoute()
          ],
          transitionBuilder: (context,child,animation)=> FadeTransition(
            opacity: animation,
            // the passed child is technically our animated selected-tab page
            child: child,
          ),
          builder: (context, child) {
            // obtain the scoped TabsRouter controller using c  ontext
            final tabsRouter = AutoTabsRouter.of(context);
            // Here we're building our Scaffold inside of AutoTabsRouter
            // to access the tabsRouter controller provided in this context
            //
            //alterntivly you could use a global key
            return Scaffold(
                body: child,
                bottomNavigationBar: BottomNavigationBar(
                  currentIndex: tabsRouter.activeIndex,
                  onTap: (index) {
                    // here we switch between tabs
                    tabsRouter.setActiveIndex(index);
                  },
                  items: [
                    BottomNavigationBarItem(label: 'Users',icon: Icon(Icons.add)),
                    BottomNavigationBarItem(label: 'Posts',icon: Icon(Icons.add)),
                    BottomNavigationBarItem(label: 'Settings',icon: Icon(Icons.add)),
                  ],
                ));
          },
        );
        // return Scaffold(
        //   drawer: Drawer(
        //     child: ListView(
        //       // Important: Remove any padding from the ListView.
        //       padding: EdgeInsets.zero,
        //       children: [
        //         DrawerHeader(
        //           child: Image.asset("images/kanlian_logo.png"),
        //           decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
        //         ),
        //         ListTile(
        //           leading: Icon(
        //             Icons.grid_view,
        //           ),
        //           title: const Text('Dashboard'),
        //           onTap: () {
        //             Navigator.pop(context);
        //             context.router.pushNamed("dash");
        //             setState(() {
        //
        //             });
        //           },
        //         ),
        //         ListTile(
        //           leading: Icon(
        //             Icons.layers,
        //           ),
        //           title: const Text('FrontEndUser'),
        //           onTap: () {
        //             Navigator.pop(context);
        //             context.router.pushNamed("FrontEndUser");
        //             setState(() {
        //             });
        //           },
        //         ),
        //         ListTile(
        //           leading: Icon(
        //             Icons.person,
        //           ),
        //           title: const Text('Kanlianuser'),
        //           onTap: () {
        //             Navigator.pop(context);
        //             context.router.pushNamed("Kanlianuser");
        //             setState(() {
        //             });
        //           },
        //         ),
        //         ListTile(
        //           leading: Icon(
        //             Icons.directions_boat_outlined,
        //           ),
        //           title:  const Text('BoatInformation'),
        //           onTap: () {
        //             Navigator.pop(context);
        //             context.router.pushNamed("BoatInformation");
        //             setState(() {
        //             });
        //           },
        //         ),
        //         ListTile(
        //           leading: Icon(
        //             Icons.person,
        //           ),
        //           title: const Text('UserRoles & Access'),
        //           onTap: () {
        //             Navigator.pop(context);
        //             context.router.pushNamed("UserRolesAccess");
        //             setState(() {
        //             });
        //           },
        //         ),
        //         ListTile(
        //           leading: Icon(
        //             Icons.percent_outlined,
        //           ),
        //           title: const Text('Sales'),
        //           onTap: () {
        //             Navigator.pop(context);
        //             context.router.pushNamed("Sales");
        //             setState(() {
        //             });
        //           },
        //         ),
        //         ListTile(
        //           leading: Icon(
        //             Icons.settings,
        //           ),
        //           title: const Text('Settings'),
        //           onTap: () {
        //             Navigator.pop(context);
        //             context.router.pushNamed("Settings");
        //             setState(() {
        //             });
        //           },
        //         ),
        //         SizedBox(height: height * 0.19,),
        //
        //         ListTile(
        //           leading: Icon(
        //             Icons.login_outlined,
        //           ),
        //           title: const Text('Logout'),
        //           onTap: () {
        //             Navigator.pop(context);
        //           },
        //         ),
        //       ],
        //     ),
        //   ),
        //   appBar: AppBar(
        //     // leading: Icon(Icons.menu,color: Colors.black,),
        //     // leading: ,
        //     backgroundColor: Colors.red,
        //     actions: [
        //       Icon(Icons.search,color: Colors.black,),
        //       SizedBox(width: 10,),
        //       Icon(Icons.notifications,color: Colors.black,),
        //       SizedBox(width: 10,),
        //       Center(
        //         child: CircleAvatar(
        //           backgroundColor: Colors.white,
        //           backgroundImage: AssetImage("images/kanlian_logo.png"),
        //         ),
        //       ),
        //       SizedBox(width: 5,),
        //       Icon(Icons.keyboard_arrow_down_sharp,size: 30,color: Colors.black,),
        //       SizedBox(width: 5,)
        //
        //     ],
        //
        //   ),
        //   body: AutoRouter(),
        // );

      }
    }

    );
  }
}
