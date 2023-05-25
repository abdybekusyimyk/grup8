void main(List<String> args) {
  Future<String> resaltImages = downloadImages();

  resaltImages.then((value) {
    print('suroton jyiyntyk keldi => $value');
  });

  print('main method');
}

Future<String> downloadImages() async {
  print('Surot juktolo bashtady');

  await Future.delayed(Duration(seconds: 5));

  print('Surotu juktoo prosesi');
  // await Future.delayed(Duration(seconds: 2));

  return "surot juktoldu";
}
