// Copyright (c) 2021, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'package:http/http.dart';
import 'http_response.dart';
import 'token.dart';

/// The class that wraps the ***Line Notify API***.
///
/// Using this class is ***the easiest and most intuitive way***
/// to use the Line Notify API from the Dart language.
///
/// This wrapping class is very easy to use. Please refer to the following example.
///
/// ### How To Use
///
/// ```dart
/// import 'package:line_notify_d/line_notify_d.dart';
///
/// class DemoLineNotify {
///   void main() async {
///     final HttpResponse response = await LineNotify.from(
///       token: Token.from(
///         value: 'Set your Line Notify Token here'))
///     .send(message: 'Set message you want to send here');
///
///     print(response.statusCode); // => 200
///     print(response.body); // => {status: 200, message: ok}
///   }
/// }
/// ```
class LineNotify {
  /// The uri authority
  static const String _URI_AUTORITY = 'notify-api.line.me';

  /// The url unencoded path
  static const String _URI_UNENCODED_PATH = '/api/notify';

  /// The token of Line Notify
  final Token token;

  /// Returns the new instance of [LineNotify] based on [token] passed as an argument.
  LineNotify.from({required this.token});

  /// Sends [message] and returns the http response.
  Future<HttpResponse> send({required String message}) async {
    final String authToken = this.token.value;
    final int contentLength = message.length + "message=".length;

    final Response response = await post(
      Uri.https(_URI_AUTORITY, _URI_UNENCODED_PATH),
      headers: {
        "Authorization": "Bearer $authToken",
        "Content-Type": "application/x-www-form-urlencoded",
        "Content-Length": "$contentLength",
      },
      body: "message=$message",
    );

    return HttpResponse.from(
        statusCode: response.statusCode, body: json.decode(response.body));
  }
}
