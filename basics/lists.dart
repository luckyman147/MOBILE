void main(List<String> args) {
  var a1 = [1, 2.5, 4, 8, 9.3];
  a1.removeWhere((element) => element < 3);
  // a1.retainWhere((element) => element < 3);

  print(a1);
  var b1 = a1.where((element) => element < 6);
  var b2 = a1.firstWhere((element) => element < 3, orElse: () => 0);
  var b3 = a1.lastWhere((element) => element < 6);
  var b4 = a1.indexWhere((element) => element < 6, 3);
  var b5 = a1.lastIndexWhere((element) => element < 6);
  var d = a1.whereType<double>();
  var e;
  try {
    e = a1.singleWhere((element) => element > 9);
  } catch (_) {
    e = 0;
  }

  // b1.forEach(
  //   (element) {
  //     print(element);
  //   },
  // );
  // print(b1);
  print(b2);
  print(b3);
  print(b4);
  print(b5);
  print(d);
  print(e);
}
