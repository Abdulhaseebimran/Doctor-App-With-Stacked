import 'package:doctor_app/ui/views/Dummy_views/dummy_viewmodels.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DummyView extends StatelessWidget {
  const DummyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DummyViewModel>.nonReactive(
      viewModelBuilder: () => DummyViewModel(),
      builder: (context, model, child) => const Scaffold(
        body: Center(
          child: Text('This is Dummy to Support Bottom Nav Bar Funtionality'),
        ),
      ),
    );
  }
}