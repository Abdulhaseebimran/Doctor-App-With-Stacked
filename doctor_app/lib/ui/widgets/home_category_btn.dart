import 'package:flutter/material.dart';

import 'home_icons_container.dart';
import 'home_text_widgets.dart';

homeCatergories({ required iconss, required textt}) {
  return Column(
    children: [
      homeIconCont(icn: iconss),
      HomeTextWidget(text: textt),
    ],
  );
}