import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter/services.dart';

class OpenWebPageUrl extends StatelessWidget {
  TextEditingController _textController =
  TextEditingController(text: 'https://');
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
    ),
    child: Scaffold(
      appBar: AppBar(title: Text("Application Management")),
      body: WebViewWebPage(url: "https://servicedesk.roff.pt/suporte"),
    )
    );
  }
}

class WebViewWebPage extends StatelessWidget {
  final String url;

  WebViewWebPage({this.url});

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: url,
      hidden: true,
      //appBar: AppBar(title: Text("Open Web Page URL in webview")),
    );
  }
}