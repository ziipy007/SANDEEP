import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

import '../local/hive_constant.dart';

class AppInterceptors extends Interceptor {
  String HEADER_VERSION_KEY = "version";
  String HEADER_CONTENT_TYPE_KEY = "Content-Type";
  String HEADER_USERID_KEY = "userid";
  String HEADER_AUTHORISATION_KEY = "authorization";
  String HEADER_CONTENT_TYPE_VALUE = "application/json";
  String HEADER_LANGUAGE_KEY = "language";
  String HEADER_VERSION_VALUE = "1";
  String HEADER_LANGUAGE_VALUE = "en";
  static const HEADER_LAT = "lat";
  static const HEADER_LON = "lng";

  @override
  Future<dynamic> onRequest(RequestOptions options, handler) async {
    String type="";
    // if(Platform.isAndroid){
    //   type="Android";
    // }else{
    //   type="IOS";
    // }
    String auth =
        Hive.box(HiveConstants.BOX_SETTING).get(HiveConstants.AUTH).toString();
    // String deviceToken = HiveConstants.getFcmToken() ?? "12121";
    Map<String, String> headers = {
      // if (auth.isNotEmpty) HEADER_AUTHORISATION_KEY: auth,
      // HEADER_LANGUAGE_KEY: HEADER_LANGUAGE_VALUE,
      // HEADER_CONTENT_TYPE_KEY: HEADER_CONTENT_TYPE_VALUE,
      // HEADER_VERSION_KEY: HEADER_VERSION_VALUE,
      // // "device_token": "${deviceToken}",
      // "device_type": "${type}",
      'Access-Control-Allow-Origin':'*',
      'Accept': 'application/json',

    };

    // options.headers['Access-Control-Allow-Origin'] = '*';
    // options.headers.addAll(headers);
    print("HEADERS " + headers.toString());
    return super.onRequest(options, handler);
  }

  @override
  onError(DioException err, handler) {
    var response = err.response;
    var error = err.error;
    log('DioError ${response?.statusCode}');

    print(response);
    print(err);
    print(error);
    if (response != null) {
      var statusCode = response.statusCode;

      if (statusCode == 500) {
      } else if (statusCode == 302) {
        // GlobalUtil.showInternetDialog();
      }
    } else {
      // GlobalUtil.showInternetDialog();
      return super.onError(err, handler);
    }

  }
  // @override
  // onResponse(Response response, ResponseInterceptorHandler handler) {
  //   return super.onResponse(response, handler);
  // }
}
