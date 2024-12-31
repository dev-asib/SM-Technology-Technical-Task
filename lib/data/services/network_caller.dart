import 'dart:convert';
import 'package:http/http.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class NetworkCaller {
  final LoggerService loggerServices;

  NetworkCaller({required this.loggerServices});

  Future<NetworkResponse> getRequest({required String url}) async {
    try {
      final Uri uri = Uri.parse(url);
      loggerServices.requestLog(
        url: url,
        params: {},
        body: {},
      );
      final Response response = await get(uri);
      if (response.statusCode == 200) {
        loggerServices.responseLog(
          url: url,
          statusCode: response.statusCode,
          responseBody: response.body,
          isSuccess: true,
        );
        final decodedBody = jsonDecode(response.body);
        return NetworkResponse(
          statusCode: response.statusCode,
          isSuccess: true,
          responseBody: decodedBody,
        );
      } else {
        loggerServices.responseLog(
          url: url,
          statusCode: response.statusCode,
          responseBody: response.body,
          isSuccess: false,
        );
        return NetworkResponse(
          statusCode: response.statusCode,
          isSuccess: false,
        );
      }
    } catch (e) {
      loggerServices.responseLog(
        url: url,
        statusCode: -1,
        responseBody: null,
        isSuccess: false,
        error: e,
      );
      return NetworkResponse(
        statusCode: -1,
        isSuccess: false,
        errorMessage: e.toString(),
      );
    }
  }
}
