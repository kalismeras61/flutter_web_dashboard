// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter_web_ui/ui.dart' as ui;
import 'package:flutter_web_dashboard/main.dart' as app;
import 'package:flutter_web_ui/src/engine.dart' as engine;

main() async {
  await ui.webOnlyInitializePlatform(
    assetManager: engine.AssetManager(assetsDir: "assets"),
  );
  app.main();
}
