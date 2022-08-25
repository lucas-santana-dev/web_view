import 'package:flutter/material.dart';

///Para usar essa biblioteca é necessario instalar no pubspec.yaml a biblioteca
///webview_flutter: ^3.0.4
import 'package:webview_flutter/webview_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

///Para poder funcionar no android foi necessário modificar o build.gradle no
///caminho: android>app>build.gradle para minSdkVersion 19
///Para funcionar no IOS tbm será necessario modificar uma configuração que
///ainda não fiz.

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: WebView(
        initialUrl: 'https://plusmktdigital.com/gestao-de-redes-sociais/',//pagina inicial que sera aberta no webview
        javascriptMode: JavascriptMode.unrestricted,

      ),
    );
  }
}
