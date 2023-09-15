import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constant/default_font.dart';


extension VxTextBuilderExtension on VxTextBuilder {
  Widget makeWithDefaultFont({Key? key}) {
    return textStyle(defaultFontStyle()).make();
  }
}

extension VxSelectableTextBuilderExtension on VxSelectableTextBuilder {
  Widget makeWithDefaultFont({Key? key}) {
    return textStyle(defaultFontStyle()).make();
  }
}
