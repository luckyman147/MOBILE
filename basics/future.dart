void main(List<String> args) {
  final f1 = Future(info)
      .then((value) => print(value))
      .catchError((error) => print(error));

  print(2);

  final f2 = Future.value(2).then((value) => print(value));

  final f3 = Future.delayed(Duration(seconds: 2), () => print(2));
}

double info() {
  return double.parse('56ff');
}
