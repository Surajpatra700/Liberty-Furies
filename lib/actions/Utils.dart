import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  bool check;
  Utils({
    this.check = false,
  });
  void toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: check? Color.fromARGB(255, 36, 113, 39): Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
