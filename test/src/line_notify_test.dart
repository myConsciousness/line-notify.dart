// Copyright (c) 2021, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter_test/flutter_test.dart';
import 'package:line_notify_d/line_notify_d.dart';

/// The test class for [LineNotify].
void main() {
  group('Tests send(String)', () {
    test('Tests execute performs', () async {
      final HttpResponse response =
          await LineNotify.from(token: Token.from(value: ''))
              .send(message: 'test');
    });
  });
}
