library logging_lite;

import 'package:global_configuration/global_configuration.dart';

const LOG_INFO_ENABLED = "log_info_enabled";
const LOG_SUCCESS_ENABLED = "log_success_enabled";
const LOG_ERROR_ENABLED = "log_error_enabled";
const LOG_TRACE_ENABLED = "log_trace_enabled";

void logSuccess(String message) {
  _printTraceIfEnabled(
      "SUCCESS", message, GlobalConfiguration().getValue(LOG_SUCCESS_ENABLED));
}

void logError(String message) {
  _printTraceIfEnabled(
      "ERROR", message, GlobalConfiguration().getValue(LOG_ERROR_ENABLED));
}

void logInfo(String message) {
  _printTraceIfEnabled(
      "INFO", message, GlobalConfiguration().getValue(LOG_INFO_ENABLED));
}

void logTrace(String message) {
  _printTraceIfEnabled(
      "TRACE", message, GlobalConfiguration().getValue(LOG_TRACE_ENABLED));
}

void _printTraceIfEnabled(String prefix, String message, bool enabled) {
  if (enabled) print("$prefix $message");
}
