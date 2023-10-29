import 'package:demo_getx_flutter/utils/constants/app_strings.dart';
import 'package:demo_getx_flutter/utils/network/result.dart';
import 'package:dio/dio.dart';

typedef EntityMapper<Entity, Model> = Model Function(Entity entity);

class HttpErrorCode {
  static const NOT_AUTHORIZED = "401";
  static const MAINTENANCE_MODE = "503";
}

abstract class BaseRepository {
  Future<Result<ResponseType>> safeCall<RequestType, ResponseType>(
      Future<RequestType> call,
      {EntityMapper<RequestType, ResponseType>? entityMapper}) async {
    try {
      final response = await call;
      if (entityMapper != null) {
        return Success(entityMapper(response));
      } else {
        return Success(response as ResponseType);
      }
    } on Exception catch (exception) {
      if (exception is DioError) {
        switch (exception.type) {
          case DioErrorType.cancel:
            return Error(AppStrings.err_msg_error_label, "");
          case DioErrorType.badResponse:
            return _getError(response: exception.response);
          case DioErrorType.connectionTimeout:
          case DioErrorType.sendTimeout:
          case DioErrorType.receiveTimeout:
          case DioErrorType.connectionTimeout:
          case DioErrorType.badCertificate:
          case DioErrorType.badResponse:
          case DioErrorType.connectionError:
          case DioErrorType.unknown:
            break;
        }
      }
      return Error(AppStrings.err_msg_error_label, "");
    }
  }

  Future<Result<T>> _getError<T>({Response? response}) async {
    if (response != null &&
        response.data != null &&
        response.data is Map<String, dynamic>) {}
    return Error(AppStrings.err_msg_error_label, "");
  }
}
