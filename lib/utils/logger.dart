import 'package:logger/logger.dart';

final logger = Logger(
  level: Level.info,
  printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 5,
    colors: true,
    printEmojis: true,
    lineLength: 50,
    dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
  ),
  output: null,
);
