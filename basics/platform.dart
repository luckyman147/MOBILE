import 'dart:io';

void main(List<String> args) {
  print(Platform.executable);
  print(Platform.numberOfProcessors);
  print(Platform.operatingSystem);
  print(Platform.operatingSystemVersion);
  print(Platform.script);
  print(Platform.version);
  print('--------------');
  print(Platform.isAndroid);
  print(Platform.isFuchsia);
  print(Platform.isWindows);
  print(Platform.isIOS);
  print(Platform.isMacOS);
  print('--------');
  Platform.environment.forEach((key, value) {
    print('${key}:${value}');
  });
}
