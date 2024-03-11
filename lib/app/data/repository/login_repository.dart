import '../model/send_login_otp_response.dart';
import '../provider/remote/DiaApiBaseHelper.dart';

class AuthRepository {
  Future<SendLoginOtpResponse?> sendLoginOtp(
      {required String mobile, required String countryCode}) async {
    var formData = {
      "mobile": mobile,
      "countryCode": countryCode,
    };

    try {
      var res =
          await DioApiBaseHelper.postDio(DioApiBaseHelper.sendOtp, formData);
      return SendLoginOtpResponse.fromJson(res);
    } catch (error, stacktrace) {
      return null;
    }
  }

  Future<SendLoginOtpResponse?> verifyLoginOtp(
      {required String mobile,
      required String countryCode,
      required String otp,
      required String vid}) async {
    var formData = {
      "mobile": mobile,
      "countryCode": countryCode,
      "code": otp,
      "verificationId": vid,
    };

    try {
      var res =
          await DioApiBaseHelper.postDio(DioApiBaseHelper.verifyOtp, formData);
      return SendLoginOtpResponse.fromJson(res);
    } catch (error, stacktrace) {
      return null;
    }
  }

// Future<LoginResponse?> login(
//     {required String email, required String password}) async {
//   var formData = {
//     "email": email,
//     "password": password,
//   };
//
//   try {
//     var res =
//     await DioApiBaseHelper.postDio(DioApiBaseHelper.login, formData);
//     return LoginResponse.fromJson(res);
//   } catch (error, stacktrace) {
//     return null;
//   }
// }
}
