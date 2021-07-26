// Copyright (c) 2021, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:line_notify/line_notify.dart';

/// The class that demonstrates the [LineNotify].
class DemoPomodoro {
  void main() async {
    final HttpResponse response = await LineNotify.from(
            token: Token.from(value: 'Your Line Notify Token'))
        .send(message: 'The message you want to send');

    print(response.statusCode); // => 200
    print(response.body); // {status: 200, message: ok}
  }
}
