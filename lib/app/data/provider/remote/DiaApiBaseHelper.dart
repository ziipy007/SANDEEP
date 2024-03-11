import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';

import 'DioWithInterceptors.dart';

class DioApiBaseHelper {
  // jatthapsandeep@gmail.com
  static String MAIN_URL = "http://localhost:8080/";
  static String SUB_URL = "api/v1/";

  static String BASE_URL = MAIN_URL + SUB_URL;
  static String sendOtp = 'auth/sendOtp';
  static String verifyOtp = 'auth/verifyLoginOtp';

  static get(String url) async {
    try {
      print("$BASE_URL+$url  ");
      final response = await getDio().get(BASE_URL + url);

      if (kDebugMode) {
        try {
          JsonEncoder encoder = const JsonEncoder.withIndent('  ');
          String prettyprint = encoder.convert(response.data);
          debugPrint(prettyprint);
        } catch (e, s) {}
      }
      if (kDebugMode) {
        print("$BASE_URL+$url  $response");
      }
      if (response.data["status"] == 401) {
        // GlobalUtil.showSessionDialog();
      } else if (response.data["status"] == 302) {
        // GlobalUtil.showInternetDialog();
      } else
        return response.data;
    } catch (e, s) {
      print(s);
      print(e);
    }

    /*on SocketException {
      throw FetchDataException('No Internet connection');
    }*/
  }

  static postDio(String url, dynamic data) async {
    var responseJson;
    if (kDebugMode) {
      print(BASE_URL + url);
      print(data);
    }
    try {
      final response = await getDio().post(
        BASE_URL + url,
        data: data,
      );

      if (kDebugMode) {
        try {
          JsonEncoder encoder = const JsonEncoder.withIndent('  ');
          String prettyprint = encoder.convert(response.data);
          debugPrint(prettyprint);
        } catch (e, s) {}
      }

      print("$url ${json.encode(response.data)}  ||  ${response.statusCode}");
      if (response.data["status"] == 401) {
        // GlobalUtil.showSessionDialog();
      } else if (response.data["status"] == 302) {
        // GlobalUtil.showInternetDialog();
      } else
        return response.data;
    } on SocketException {
      // return null;
      // throw FetchDataException('No Internet connection');
    }
    /*catch(e,s){
      print("inside catch");
      print(e);
      print(s);
    }*/
    return responseJson;
  }
}
