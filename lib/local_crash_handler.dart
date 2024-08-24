import "package:flutter/material.dart";
import "package:j1_crash_handler/j1_crash_handler.dart";
import "package:j1_logger/j1_logger.dart";

class LocalCrashHandler extends J1CrashHandler {
  const LocalCrashHandler();

  @override
  void handleFlutterError(FlutterErrorDetails details) {
    J1Logger.log(name: "flutter error", params: {"error": details.exception, "stackTrace": details.stack ?? "N/A"});
  }

  @override
  bool handleAsyncError(Object object, StackTrace stack) {
    J1Logger.log(name: "async error", params: {"error": object, "stackTrace": stack});
    return true;
  }
}
