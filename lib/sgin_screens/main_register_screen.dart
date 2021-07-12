import 'package:flutter/material.dart';

import '../constants/enums.dart';
import '../home_screen.dart';
import '../models/form_user.dart';
import 'customer_register_page.dart';
import 'mershant_register_page.dart';

class MainRegister extends StatefulWidget {
  @override
  _MainRegisterState createState() => _MainRegisterState();
}

class _MainRegisterState extends State<MainRegister> {
  FormUser formUser;

  setFormUser(formUser) {
    this.formUser = formUser;
  }

  UserType groupValue = UserType.customer;

  saveForm() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
    // if (formKey.currentState.validate()) {
    //   formKey.currentState.save();
    // } else {
    //   return;
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: RadioListTile(
                  title: Text('Customer'),
                  value: UserType.customer,
                  groupValue: groupValue,
                  onChanged: (v) {
                    this.groupValue = v;
                    setState(() {});
                  },
                ),
              ),
              Expanded(
                child: RadioListTile(
                  title: Text('Producer'),
                  value: UserType.mershant,
                  groupValue: groupValue,
                  onChanged: (v) {
                    this.groupValue = v;
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
          groupValue == UserType.customer
              ? CustomerRegister()
              : MershantRegister(),
        ],
      ),
    );
  }
}
