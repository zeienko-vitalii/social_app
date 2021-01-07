import 'package:logger/logger.dart';

class Log {
  factory Log({bool excludeDebug = false}) {
    _logger ??= Logger(
      filter: excludeDebug
          ? ExcludeByLevelLogFilter(
              excludedLevels: <Level>[
                Level.debug,
              ],
            )
          : null,
      printer: PrettyPrinter(
        methodCount: 4, // number of method calls to be displayed
        errorMethodCount: 8, // number of method calls if stacktrace is provided
      ),
    );
    return _instance;
  }

  Log._internal();

  static final Log _instance = Log._internal();

  static Log getInstance() => _instance;

  static Logger _logger;
  static const String _tag = 'socialFlutter';

  void changeFilter({List<Level> excludedLevels}) {
    _logger = Logger(filter: ExcludeByLevelLogFilter(excludedLevels: excludedLevels));
  }

  void d([dynamic msg]) {
    _logger.d(_messageWithTag(msg));
  }

  void v([dynamic msg]) {
    _logger.v(_messageWithTag(msg));
  }

  void i([dynamic msg]) {
    _logger.i(_messageWithTag(msg));
  }

  void w([dynamic msg]) {
    _logger.w(_messageWithTag(msg));
  }

  void e([dynamic msg]) {
    _logger.e(_messageWithTag(msg));
  }

  void wtf([dynamic msg]) {
    _logger.wtf(_messageWithTag(msg));
  }

  String _messageWithTag(dynamic msg) => '$_tag $msg';
}

class ExcludeByLevelLogFilter extends LogFilter {
  ExcludeByLevelLogFilter({this.excludedLevels});

  final List<Level> excludedLevels;

  @override
  bool shouldLog(LogEvent event) => !(excludedLevels?.contains(event.level) ?? false);
}
