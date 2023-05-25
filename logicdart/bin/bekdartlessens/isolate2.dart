import 'dart:isolate';

void main(List<String> args) async {
  ReceivePort receivePort = ReceivePort();

  await Isolate.spawn(starteIco, receivePort.sendPort);

  Stream receiveStream = receivePort.asBroadcastStream();

  receiveStream.listen((event) {
    print(event);
  });
}

starteIco(SendPort sendPort) async {
  sendPort.send('Hellp from new IsoLate');

  await Future.delayed(Duration(seconds: 5));

  sendPort.send('After 5 secondc......');
}
