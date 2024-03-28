// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';

/// The abstracted base class is very handy when we come to the fact
/// that we are about to communicate with network calls but how?
/// In order to determine the state of the request being sent to the
/// server and its response this wrapper class can be used to wrap our
/// entire network call which is so important later on when we will
/// have too many requests and logic we will see how minimized the code
/// wouold become as we can see bellow.
///
/// There are two different states:
/// 1. [DataSuccess] One when we get successful response.
/// 2. [DataFailed] When we get an exception or error while sending a request or
///    receiving a request.
///
/// NOTE: It's a good practice to code the classes we'll use through out
/// the entire app
abstract class DataState<T> {
  final T? data;
  final DioError? error;

  const DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(DioError error) : super(error: error);
}
