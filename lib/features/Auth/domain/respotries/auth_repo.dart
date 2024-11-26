import 'package:flutter/material.dart';

abstract class AuthRepo {
  Future loginWhithGoogle();
  Future loginWhithFacbook();
  Future completeInformation({@required String name, @required String phoneNumber});

}