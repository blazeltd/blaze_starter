import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sizzle_starter/src/core/logic/logger.dart';
import 'package:sizzle_starter/src/core/model/initialization_hook.dart';
import 'package:sizzle_starter/src/feature/app/logic/app_runner.dart' as blaze;

/// Run that uses all platforms
void sharedRun(InitializationHook hook) {
  FlutterError.onError = Logger.logFlutterError;
  // there could be some shared initialization here
  Logger.runLogging(() {
    runZonedGuarded(
      () async {
        await blaze.AppRunner().initializeAndRun(hook);
      },
      Logger.logZoneError,
    );
  });
}
