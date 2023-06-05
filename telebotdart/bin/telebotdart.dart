import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

void main() async {
  var BOT_TOKEN = '6050856767:AAGSHH2t745dGTE41XAHgXqeHp6MUK2N-3Y';
  final username = (await Telegram(BOT_TOKEN).getMe()).username;
  var teledart = TeleDart(BOT_TOKEN, Event(username!));

  teledart
      .onMessage(keyword: 'salam')
      .listen((message) => message.reply('kandai'));

  teledart
      .onCommand('start')
      .listen((message) => message.reply('Assalamu aleikum'));

  teledart.start();
}
