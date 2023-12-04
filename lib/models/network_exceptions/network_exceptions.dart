import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exceptions.freezed.dart';

@freezed
abstract class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.unauthorizedRequest(String reason) =
      UnauthorizedRequest;

  const factory NetworkExceptions.badRequest() = BadRequest;

  const factory NetworkExceptions.notFound(String reason) = NotFound;

  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable() = NotAcceptable;

  const factory NetworkExceptions.requestTimeout() = RequestTimeout;

  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  const factory NetworkExceptions.conflict() = Conflict;

  const factory NetworkExceptions.internalServerError() = InternalServerError;

  const factory NetworkExceptions.notImplemented() = NotImplemented;

  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.formatException() = FormatException;

  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.defaultError(String error) = DefaultError;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  static NetworkExceptions handleResponse(Response<dynamic>? response) {
    final statusCode = response?.statusCode ?? 0;
    final statusMessage = response?.statusMessage ?? '';

    if (response?.data != null &&
        response?.data is Map &&
        response?.data.containsKey('hash')) {
      return NetworkExceptions.defaultError(
        jsonEncode(response?.data),
      );
    }
    if (statusMessage.toLowerCase().contains("invalid access token") ||
        (response?.data != null &&
            response!.data
                .toString()
                .toLowerCase()
                .contains('invalid access token'))) {
      return const NetworkExceptions.defaultError("Invalid Access Token");
    }
    if (statusMessage.toLowerCase().contains("invalid access token") ||
        (response?.data != null &&
            response!.data
                .toString()
                .toLowerCase()
                .contains('invalid access token'))) {
      return const NetworkExceptions.defaultError("Invalid Access Token");
    }
    if (statusMessage.toLowerCase().contains("password expired") ||
        (response?.data != null &&
            response!.data
                .toString()
                .toLowerCase()
                .contains('password expired'))) {
      return const NetworkExceptions.defaultError(
          "Password expired, please change the password");
    }
    switch (statusCode) {
      case 400:
      case 401:
      case 403:
        return const NetworkExceptions.unauthorizedRequest(
          'Unauthorized Request',
        );
      case 404:
        return const NetworkExceptions.notFound(
          'Not found',
        );
      case 409:
        return const NetworkExceptions.conflict();
      case 408:
        return const NetworkExceptions.requestTimeout();
      case 500:
        return const NetworkExceptions.internalServerError();
      case 503:
        return const NetworkExceptions.serviceUnavailable();
      case 422:
        String detailedError = _extractDynamicErrorDetails(response?.data);
        return NetworkExceptions.defaultError(detailedError);
      case 99995:
        return const NetworkExceptions.defaultError("Invalid Access Token");
      default:
        final responseCode = statusCode;
        if (statusMessage.isNotEmpty) {
          return NetworkExceptions.defaultError(
            '$responseCode\$: $statusMessage',
          );
        }
        return NetworkExceptions.defaultError(
          'Received invalid status code: $responseCode',
        );
    }
  }

  // This is specifically for capturing errors for registration flow
  static String _extractDynamicErrorDetails(dynamic responseData) {
    if (responseData != null && responseData is Map) {
      List<String> errorMessages = _recursiveErrorExtraction(responseData);
      return _formatErrorMessages(errorMessages);
    }
    return 'Unprocessable Entity';
  }

  static List<String> _recursiveErrorExtraction(dynamic data) {
    List<String> errors = [];
    if (data is Map) {
      data.forEach((key, value) {
        // If the value is a numeric string and the key is something like 'response-id', skip it
        if (key == 'response-id' && value is String && _isNumeric(value)) {
          return;
        }
        errors.addAll(_recursiveErrorExtraction(value));
      });
    } else if (data is List) {
      for (var item in data) {
        errors.addAll(_recursiveErrorExtraction(item));
      }
    } else if (data is String) {
      if (!_isUnwantedString(data) && !_isNumeric(data)) {
        errors.add(data);
      }
    }
    return errors;
  }

  static bool _isNumeric(String str) {
    // Check if the string is numeric
    return double.tryParse(str) != null;
  }

  static bool _isUnwantedString(String data) {
    // Define keywords to exclude
    List<String> unwantedKeywords = [
      "status: \"fail\"",
      "response-id",
      "fail",
      // Add any other specific keywords or phrases you want to exclude
    ];

    // Check if the data contains any of the unwanted keywords
    for (String keyword in unwantedKeywords) {
      if (data.toLowerCase().contains(keyword.toLowerCase())) {
        return true;
      }
    }
    return false;
  }

  static String _formatErrorMessages(List<String> messages) {
    StringBuffer formattedErrors = StringBuffer();
    for (int i = 0; i < messages.length; i++) {
      formattedErrors.writeln('${i + 1}. ${messages[i]}');
    }
    return formattedErrors.toString();
  }

  static NetworkExceptions _getDioException(dynamic error) {
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        if ((error is DioExceptionType) &&
            (error as DioException).error is SocketException) {
          networkExceptions = const NetworkExceptions.noInternetConnection();
        } else if (error is DioException) {
          switch (error.type) {
            case DioExceptionType.cancel:
              networkExceptions = const NetworkExceptions.requestCancelled();
              break;
            case DioExceptionType.connectionTimeout:
              networkExceptions = const NetworkExceptions.requestTimeout();
              break;
            case DioExceptionType.connectionError:
              networkExceptions =
                  const NetworkExceptions.noInternetConnection();
              break;
            case DioExceptionType.receiveTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
            case DioExceptionType.badResponse:
              networkExceptions =
                  NetworkExceptions.handleResponse(error.response);
              break;
            case DioExceptionType.sendTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
            case DioExceptionType.unknown:
            case DioExceptionType.badCertificate:
              networkExceptions = const NetworkExceptions.unexpectedError();
          }
        } else {
          networkExceptions = const NetworkExceptions.unexpectedError();
        }
        return networkExceptions;
      } on FormatException {
        return const NetworkExceptions.formatException();
      } catch (_) {
        return const NetworkExceptions.unexpectedError();
      }
    } else {
      if (error.toString().contains('is not a subtype of')) {
        return const NetworkExceptions.unableToProcess();
      } else {
        return const NetworkExceptions.unexpectedError();
      }
    }
  }

  static String getErrorMessage(dynamic error) {
    final networkExceptions = _getDioException(error);
    var errorMessage = '';
    networkExceptions.when(
      notImplemented: () {
        errorMessage = 'Not Implemented';
      },
      requestCancelled: () {
        errorMessage = 'Request Cancelled';
      },
      internalServerError: () {
        errorMessage = 'Internal Server Error';
      },
      notFound: (String reason) {
        errorMessage = reason;
      },
      serviceUnavailable: () {
        errorMessage = 'Service unavailable';
      },
      methodNotAllowed: () {
        errorMessage = 'Method Allowed';
      },
      badRequest: () {
        errorMessage = 'Bad request';
      },
      unauthorizedRequest: (String error) {
        errorMessage = error;
      },
      unexpectedError: () {
        errorMessage = 'Unexpected error occurred';
      },
      requestTimeout: () {
        errorMessage = 'Cannot Reach To the Server At the moment';
      },
      noInternetConnection: () {
        errorMessage = 'No internet connection';
      },
      conflict: () {
        errorMessage = 'Error due to a conflict';
      },
      sendTimeout: () {
        errorMessage = 'Cannot Reach To the Server At the moment';
      },
      unableToProcess: () {
        errorMessage = 'Unable to process the data';
      },
      defaultError: (String error) {
        errorMessage = error;
      },
      formatException: () {
        errorMessage = 'Unexpected error occurred';
      },
      notAcceptable: () {
        errorMessage = 'Not acceptable';
      },
    );
    return errorMessage;
  }
}
