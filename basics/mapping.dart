void main(List<String> args) {
  Iterable<int> l = [4, 3, 3, 4, 5, 1];
  l.forEach((element) {
    print(element);
  });
  var nuldsl = null;
  var list = [
    0,
    ...l,
    ...[3, 3],
    if (l.length > 3) ...l,
    ...?nuldsl,
  ];
  print(list);
  var s = {9: "a", 8: "Z"};
  print(l.any((element) => element % 2 == 0));
  var sum = 0;
  print(l.map((e) => sum += e));
}
