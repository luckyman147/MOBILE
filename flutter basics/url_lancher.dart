import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(List<String> args) {
  runApp(name());
}

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyhomePage(),
    );
  }
}

class MyhomePage extends StatefulWidget {
  const MyhomePage({super.key});

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  String str = 'Get the app';
  String url =
      "https://play.google.com/store/apps/details?id=com.facebook.lite";
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Demo")),
        body: Center(
            child: ElevatedButton(
                child: Text(str),
                onPressed: () async {
                  try {
                    await canLaunchUrl(Uri.parse(url))
                        ? await launchUrl(Uri.parse(url),
                            mode: LaunchMode.inAppWebView)
                        : throw 'Could not launch $url';
                  } catch (e) {
                    setState(() {
                      str = e.toString();
                    });
                  }
                })));
  }
}
