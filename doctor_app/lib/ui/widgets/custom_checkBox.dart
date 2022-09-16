import 'dart:async';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: checkBoxStream,
      initialData: false,
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        return Theme(
          data: ThemeData(unselectedWidgetColor: Colors.blue),
          child: Checkbox(
            value: snapshot.data,
            onChanged: (changedValue) {
              checkBoxController.sink.add(changedValue!);
            },
          ),
        );
      },
    );
  }
}

final StreamController<bool> checkBoxController =
    StreamController<bool>.broadcast();
Stream<bool> get checkBoxStream => checkBoxController.stream;

checkF(changedValue) {
  checkBoxController.sink.add(changedValue!);
}