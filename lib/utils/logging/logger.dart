import 'package:logger/logger.dart';

class FLoggerHelper {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    level: Level.debug,
  );

  static void debug(String message) {
    _logger.d(message);
  }

  static void info(String message) {
    _logger.i(message);
  }

  static void warning(String message) {
    _logger.w(message);
  }

  static void error(String message) {
    _logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}
// Commit at 2022-04-22 15:46:35
// Commit at 2023-03-13 15:10:42
// Commit at 2024-09-05 14:47:09
// Random commit
// Random commit
// Random commit
Random commit
Random commit
Random commit
