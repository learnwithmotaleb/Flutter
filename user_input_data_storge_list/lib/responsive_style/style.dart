import 'package:flutter/cupertino.dart';

SizedBox sizedBox50(child){
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: child,
    ),
  );
}