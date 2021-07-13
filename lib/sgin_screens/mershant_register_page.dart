import 'package:flutter/material.dart';
import 'package:session10/router/app_router.dart';

import '../globals.dart';
import '../home_screen.dart';
import '../models/form_user.dart';

class MershantRegister extends StatefulWidget {
  @override
  _MershantRegisterState createState() => _MershantRegisterState();
}

class _MershantRegisterState extends State<MershantRegister> {
  List categories = ['Fashion', 'Shoes', 'Electronics', 'Midecals', 'Software'];

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String email;
  String password;
  String shopName;
  String bio;
  String category;
  String shopAddress;

  setEmail(String email) {
    this.email = email;
  }

  setPassword(String password) {
    this.password = password;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
              onSaved: (v) {
                this.email = v;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                labelText: 'Email',
                fillColor: Colors.blue.withOpacity(0.2),
                filled: true,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
              onSaved: (v) {
                this.password = v;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                labelText: 'Password',
                fillColor: Colors.blue.withOpacity(0.2),
                filled: true,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
              onSaved: (v) {
                this.shopName = v;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                labelText: 'Shop Name',
                fillColor: Colors.blue.withOpacity(0.2),
                filled: true,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
              onSaved: (v) {
                this.shopAddress = v;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                labelText: 'Shop Address',
                fillColor: Colors.blue.withOpacity(0.2),
                filled: true,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
              onSaved: (v) {
                this.bio = v;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                labelText: 'Bio',
                fillColor: Colors.blue.withOpacity(0.2),
                filled: true,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue.withOpacity(0.2),
            ),
            child: DropdownButton<String>(
              isExpanded: true,
              underline: Container(),
              value: this.category,
              onChanged: (v) {
                this.category = v;
                setState(() {});
              },
              items: categories.map((e) {
                return DropdownMenuItem<String>(
                  child: Text(e),
                  value: e,
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('Sign Up As Mershant'),
            onPressed: () {
              if (formKey.currentState.validate()) {
                formKey.currentState.save();
                FormUser formUser = FormUser.mershant(
                  email: email,
                  password: password,
                  shopName: shopName,
                  bio: bio,
                  category: category,
                  shopAddress: shopAddress,
                );
                Globals.globals.formUser = formUser;
                // Navigator.of(context)
                //     .pushNamedAndRemoveUntil('/home', (route) => false);
                // Navigator.of(context)
                    // .pushNamedAndRemoveUntil('/home', ModalRoute.withName(''));
                AppRouter.router.pushFunction(HomeScreen());
                // Navigator.of(context)
                //     .pushNamedAndRemoveUntil('/home', (route) => );
                // dynamic result = Navigator.of(context).pushNamed('ss');
                // print(result);
              }
            },
          ),
        ],
      ),
    );
  }
}
