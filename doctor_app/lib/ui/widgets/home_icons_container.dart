import 'package:flutter/material.dart';

homeIconCont({required icn}) {
  return Container(
    alignment: Alignment.center,
    height: 45,
    width: 45,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
        color: Colors.blue.withOpacity(.2)),
    child: icn,
  );
}