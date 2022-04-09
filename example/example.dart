// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:line_notify/line_notify.dart';

void main() async {
  final lineNotify = LineNotify(token: 'Write your token here');
  final response = await lineNotify.send(message: 'Write your message here');

  print(response.statusCode);
  print(response.body);
}
