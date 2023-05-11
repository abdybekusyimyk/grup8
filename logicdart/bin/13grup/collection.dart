void main(List<String> args) {
  //  Collection
// index
  List student = <dynamic>[
    123, // 0
    true, // 1
    'Asan', // 2
    1.2, // 3
  ]; // int, String, bool, double, var, num, dynamic

  print(student);
  print(student[2]);

  Map kalaganbirat = <int, String>{
    1: '26',
    2: "yson",
    3: 'talant'
  }; // key : value
  //  < >  --> generic turun berip koisok bolot
  print(kalaganbirat);

  Set ozgormo = {
    1,
    2,
    3,
    4,
    5,
    6,
    true,
    '8',
    9,
    1,
    2,
    3
  }; //  okshosh elementerdi albait

  print(ozgormo);
}
