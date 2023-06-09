void main(List<String> args) {
  final s1 = Stream.periodic(Duration(milliseconds: 550), (a) => a);
  // final sub = s1.listen(
  //   (_) => _,
  //   onError: (err) {
  //     print(err);
  //   },
  //   onDone: () => print('Done'),
  //   cancelOnError: true,
  // );
  // sub.onData((data) {
  //   data > 10 ? sub.cancel() : print(data);
  // });
  final s2 = s1.where((event) => event % 2 == 0);
  s2.listen((event) {
    print(event);
  });
}
