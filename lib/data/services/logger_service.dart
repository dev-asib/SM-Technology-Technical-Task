import 'package:logger/logger.dart';

class LoggerService {
  final Logger logger;

  LoggerService({required this.logger});

  void requestLog({
    required String url,
    required Map<String, dynamic> params,
    required Map<String, dynamic> body,
  }) {
    logger.i('''
    [Request]
    Url: $url
    Params: $params
    Body: $body
    ''');
  }

  void responseLog({
    required String url,
    required int statusCode,
    required dynamic responseBody,
    required bool isSuccess,
    dynamic error,
  }) {
    String message = '''
    [Response]
    Url: $url
    Status Code: $statusCode
    Response Body: $responseBody
    ''';

    if (error != null) {
      message += '$error\n';
    }

    if (isSuccess) {
      logger.i(message);
    } else {
      logger.e(message);
    }
  }
}
