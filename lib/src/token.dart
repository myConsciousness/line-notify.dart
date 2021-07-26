// Copyright (c) 2021, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// The class that represents the token of Line Notify API.
class Token {
  /// The token value
  final String value;

  /// Returns the new instance of [Token] based on [value] passed as an argument.
  Token.from({required this.value});
}
