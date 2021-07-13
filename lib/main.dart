import 'package:flutter/material.dart';
import 'package:session10/router/app_router.dart';
import 'sgin_screens/main_register_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // AppRouter appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: AppRouter.router.navKey,
      // routes: {
      //   MainRegister.routeName : (context) => MainRegister(),
      //   HomeScreen.routeName : (context) => HomeScreen(),
      // },
      onGenerateRoute: AppRouter.router.onGenerateRoute,
      // onUnknownRoute: (RouteSettings r){},
      initialRoute: MainRegister.routeName,
    );
  }
}
