void main(List<String> args) async {
  await Future.delayed(Duration(seconds: 2), () => (2))
      .then((value) => print('value:$value'))
      .catchError((e) => print('error:$e'));
  print(1);
  try {
    final int value = await Future.delayed(Duration(seconds: 2), () => 2);
    print('value:$value');
  } on Exception catch (e) {
    print('error:$e');
  }
  print(1);

  final s1 = Stream.periodic(Duration(milliseconds: 550), (a) => a);
  // final sub = s1.listen(
  //   (_) => _,
  //   onError: (err) {
  //     print(err);
  //   },
  // );
  // sub.onData((data) {
  //   data > 10 ? sub.cancel() : print(data);
  // });
  await for (var value in s1) {
    if (value > 10) break;
    print(value);
  }
}
