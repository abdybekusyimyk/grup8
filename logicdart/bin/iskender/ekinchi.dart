void main(List<String> args) {
  // int suma = 6;
  int suma = 123;

  num s = suma / 6;

  num g = s;

  num sg = s + g;

  num m = sg * 2;

  num res = m + sg;

  print('Summa --> $suma');
  print('');
  print('Syimyk , Gulgigit --> $s,+ $g = $sg * 2 => $m');
  print('Mustafa --> $m ');

  print('Mustafa + (Syimyk + Gulgigit) -> $m + $sg ==> $res');
  print('');

  print("result => ${res.truncate()}");
}
