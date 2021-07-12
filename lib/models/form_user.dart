import 'package:flutter/foundation.dart';
import '../constants/enums.dart';

class FormUser {
  UserType userType;
  String email;
  String password;
  String shopName;
  String bio;
  String category;
  String shopAddress;
  FormUser.customer({
    @required this.email,
    @required this.password,
    this.userType = UserType.customer,
  });
  FormUser.mershant({
    @required this.email,
    @required this.password,
    this.userType = UserType.mershant,
    @required this.shopName,
    @required this.bio,
    @required this.category,
    @required this.shopAddress,
  });

  

}
