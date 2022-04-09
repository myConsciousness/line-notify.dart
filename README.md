[![pub package](https://img.shields.io/pub/v/line_notify.svg?logo=dart&logoColor=00b9fc)](https://pub.dartlang.org/packages/line_notify)
[![Dart SDK Version](https://badgen.net/pub/sdk-version/line_notify)](https://pub.dev/packages/line_notify/)

# 1. About

This is a `Line Notify API` wrapping library for the Dart language licensed under BSD 3-Clause.

<!-- TOC -->

- [1. About](#1-about)
  - [1.1. How To Use](#11-how-to-use)
    - [1.1.1. Get the token](#111-get-the-token)
    - [1.1.2. Implementation](#112-implementation)
  - [1.2. More Information](#12-more-information)

<!-- /TOC -->

## 1.1. How To Use

### 1.1.1. Get the token

First, you need to get a token to authorize with the Line Notify API from the official [Line Notify website](https://notify-bot.line.me/en/).

### 1.1.2. Implementation

Basically you can use this library in the following format.

```dart
import 'package:line_notify/line_notify.dart';

void main() async {
  final lineNotify = LineNotify(token: 'Write your token here');
  final response = await lineNotify.send(message: 'Write your message here');

  print(response.statusCode);
  print(response.body);
}

```

## 1.2. More Information

This library was designed and implemented by **_Kato Shinya_**.

- [Creator Profile](https://github.com/myConsciousness)
- [License](https://github.com/myConsciousness/line-notify.dart/blob/main/LICENSE)
- [API Document](https://pub.dev/documentation/line_notify/latest/line_notify/line_notify-library.html)
- [Release Note](https://github.com/myConsciousness/line-notify.dart/releases)
- [Bug Report](https://github.com/myConsciousness/line-notify.dart/issues)
