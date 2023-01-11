// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';

import 'package:music_app/imports_bindings.dart';

@immutable
class ApiUriModel {
  final String uri;
  final Map<String, dynamic>? headers;
  final Map<String, dynamic>? queryParameters;
  final Map<String, dynamic>? reqBody;
  const ApiUriModel({
    required this.uri,
    this.headers,
    this.queryParameters,
    this.reqBody,
  });

  @override
  String toString() {
    return 'ApiUriModel(uri: $uri, headers: $headers, queryParameters: $queryParameters, reqBody: $reqBody)';
  }

  @override
  bool operator ==(covariant ApiUriModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.uri == uri &&
      mapEquals(other.headers, headers) &&
      mapEquals(other.queryParameters, queryParameters) &&
      mapEquals(other.reqBody, reqBody);
  }

  @override
  int get hashCode {
    return uri.hashCode ^
      headers.hashCode ^
      queryParameters.hashCode ^
      reqBody.hashCode;
  }

  ApiUriModel copyWith({
    String? uri,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? reqBody,
  }) {
    return ApiUriModel(
      uri: uri ?? this.uri,
      headers: headers ?? this.headers,
      queryParameters: queryParameters ?? this.queryParameters,
      reqBody: reqBody ?? this.reqBody,
    );
  }
}
