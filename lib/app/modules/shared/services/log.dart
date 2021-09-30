import 'package:logger/logger.dart';

Logger logger(String className) {
  return Logger(printer: CustomLogPrinter(className));
}

class CustomLogPrinter extends LogPrinter {
  final String className;

  CustomLogPrinter(this.className);

  @override
  List<String> log(LogEvent event) {
    final color = PrettyPrinter.levelColors[event.level]!;
    final emoji = PrettyPrinter.levelEmojis[event.level];
    final message = event.message;
    if (event.level == Level.verbose) {
      return [color('$emoji $className - $message, ${event.stackTrace}')];
    }
    return [color('$emoji $className - $message')];
  }
}
