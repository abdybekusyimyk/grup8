void main(List<String> args) {
  test().then((value) {
    print('object........................');
  }).whenComplete(() {
    print('birinchisi atkarylgandan kiiin ushul atkarylat');
  }).timeout(
    Duration(seconds: 1),
  ); // ushunch ubakyta malymat kelbese ekranga ushunu chygaryp ber
}

Future<String> test() async {
  await Future.delayed(Duration(seconds: 3));

  // Future.error('Bul JErde Kata bar');

  return Future.value('Valuedan test');
}
