[![Dart](https://github.com/myConsciousness/line-notify-d/actions/workflows/dart.yml/badge.svg?branch=main)](https://github.com/myConsciousness/line-notify-d/actions/workflows/dart.yml)

# 1. Line Notify D

## 1.1. What is it?

`Line Notify D` is a Line Notify API wrapping library for the Dart language licensed under BSD 3-Clause.

<!-- TOC -->

- [1. Line Notify D](#1-line-notify-d)
  - [1.1. What is it?](#11-what-is-it)
  - [1.2. Motivation](#12-motivation)
  - [1.3. How To Use](#13-how-to-use)
    - [1.3.1. Get the token](#131-get-the-token)
    - [1.3.2. Implement the LineNotify](#132-implement-the-linenotify)
  - [1.4. More Information](#14-more-information)

<!-- /TOC -->

## 1.2. Motivation

1. Provide an easier and more intuitive library for the Line Notify API in the Dart language.
2. Provide an interface that is aware only of the Line Notify API token and the message to be sent.

## 1.3. How To Use

### 1.3.1. Get the token

First, you need to issue a token to authorize with the Line Notify API from the official [Line Notify website](https://notify-bot.line.me/en/).

### 1.3.2. Implement the LineNotify

Basically, you can use a `LineNotify` in the following format.

```dart
import 'package:line_notify/line_notify.dart';

/// The class that demonstrates the [LineNotify].
class DemoLineNotify {
  void main() async {
    final HttpResponse response = await LineNotify.from(
            token: Token.from(value: 'Set your Line Notify Token here'))
        .send(message: 'Set the message you want to send here');

    print(response.statusCode); // => 200
    print(response.body); // {status: 200, message: ok}
  }
}
```



## 1.4. More Information

`Line Notify D` was designed and implemented by Kato Shinya, who works as a freelance developer.

Regardless of the means or content of communication, I would love to hear from you if you have any questions or concerns. I do not check my email box very often so a response may be delayed, anyway thank you for your interest!

- [Creator Profile](https://github.com/myConsciousness)
- [Creator Website](https://myconsciousness.github.io)
- [License](https://github.com/myConsciousness/line-notify-d/blob/main/LICENSE)
- [Release Note](https://github.com/myConsciousness/line-notify-d/releases)
- [File a Bug](https://github.com/myConsciousness/line-notify-d/issues)
