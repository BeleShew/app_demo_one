import 'dart:ffi';

import 'package:bmprogresshud/progresshud.dart';
import 'package:flutter/widgets.dart';

class HudProvider extends Dismissible {
  Void show(BuildContext context) {
    ProgressHud.of(context).show(ProgressHudType.loading, "loading...");
  }
}

class IHudInterface {}
