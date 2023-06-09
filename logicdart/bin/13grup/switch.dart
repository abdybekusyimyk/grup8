// import '../bekdartlessens/future.dart';

void main(List<String> args) {
  int baa = 4;

  switch (baa) {
    case 5:
      {
        print('Jarshy baa');
      }
      return;

    case 4:
      {
        print('orto baa');
      }

      continue test;

    test:
    case 3:
      {
        print('jakshy baa birok 3');
      }

      continue syimyk;

    case 2:
      {
        print('Nachar baa');
      }
      break;

    case 90:
      {
        print('Nachar baa');
      }
      break;

    syimyk:
    case 100:
      return print('koshumcha');

    default:
      {
        print("saga baa jok");
      }
  }
}
