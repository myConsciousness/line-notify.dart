// Copyright (c) 2021, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// The class that represents the HTTP reseponse from Line Notify API.
class HttpResponse {
  /// The status code
  final int statusCode;

  /// The body
  final Map<String, dynamic> body;

  /// Returns the new instance of [HttpResponse] based on [statusCode] and [body].
  HttpResponse.from({required this.statusCode, required this.body});
}
