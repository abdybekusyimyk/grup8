void main(List<String> args) {
  // bibonach --> ozunon murunku eku sandyn jyiyndysyna barabar  (0 ,1)=> ozgorbos

  // 0  1  1  2  3  5  8  13  21  34  .....

  int f1 = 0;
  int f2 = 1;
  int fn = 0;

  for (int i = 2; i <= 9; i++) {
    print('-----1');
    fn = f1 + f2;
    print('-----2');
    print('$i  Fibonach  san => $fn ');
    print('$fn  =  $f1  +   $f2');
    f1 = f2;
    print('-----3');
    print('$f1  =   $f2');
    f2 = fn;
    print('-----4');
    print('$f2  =   $fn');
    print(i);
  }

  print(fn);
}
