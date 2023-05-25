import 'dart:isolate';

void main(List<String> args) {
  print('main methot = 1');

  Isolate.spawn(startIsolate, 'message => 1');
  Isolate.spawn(startIsolate, 'message => 2');
  print('main methot = 4');

  Isolate.spawn(startIsolate, 'message => 3');
  Isolate.spawn(startIsolate, 'message => 4');

  print('main methot = 2');
  print('main methot = 3');
}

//// tartip menen jygarbait randomnyi

void startIsolate(String messeng) {
  print('start IsoLate ==> $messeng');
}
