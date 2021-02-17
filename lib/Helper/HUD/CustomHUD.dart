import 'dart:ffi';

import 'package:bmprogresshud/progresshud.dart';
import 'package:flutter/widgets.dart';

class HudProvider extends IDisposable {
  
  var hud = ProgressHud;
  Void show() {
    // ProgressHud.of(context).show(ProgressHudType.loading, "loading...");

    //hud.show(ProgressHudType.progress, "loading");
  }

  @override
  void Dispose() {
    //var hud = ProgressHud.of(context);
   // hud.dismiss();
  }
}

abstract class IDisposable {
  void Dispose();
}

class IHudInterface {}
