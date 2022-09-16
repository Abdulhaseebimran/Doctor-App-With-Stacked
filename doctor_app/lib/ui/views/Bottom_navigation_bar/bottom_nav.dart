import 'package:doctor_app/ui/views/Bottom_navigation_bar/bottom_navigation_viewmodels.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/text_const.dart';

class BottomNavigationView extends StatelessWidget {
  const BottomNavigationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomNavigationViewModel>.reactive(
      viewModelBuilder: () => BottomNavigationViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: model.pages.elementAt(model.selected),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: const IconThemeData(color: Colors.blue),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.home,
                ),
                label: TextConstant.home),
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.calendar_month_outlined,
                ),
                label: TextConstant.appointment),
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.history,
                ),
                label: TextConstant.history),
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.explore_outlined,
                ),
                label: TextConstant.topDoc),
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.person_outline_outlined,
                ),
                label: TextConstant.profile),
          ],
          currentIndex: model.selected,
          onTap: model.onItemTapped,
        ),
      ),
    );
  }
}