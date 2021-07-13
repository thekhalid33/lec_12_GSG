import 'package:flutter/material.dart';
import 'constants/enums.dart';

import 'globals.dart';

class HomeScreen extends StatelessWidget {
  static final routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(Globals.globals.formUser.userType == UserType.customer
              ? 'hi i am customer, my email is ${Globals.globals.formUser.email} and my password is ${Globals.globals.formUser.password}'
              : 'hi i am mershant, my shop name is ${Globals.globals.formUser.shopName} and its place in ${Globals.globals.formUser.shopAddress}, ${Globals.globals.formUser.bio}'),
          ElevatedButton(
            child: Text('SingOut'),
            onPressed: () {
              // Navigator.of(context).pop('hello this message from home');
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
