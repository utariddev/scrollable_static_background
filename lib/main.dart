import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget textWidget(String text) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double bottomPadding = 0;
    if (MediaQuery.of(context).viewInsets.bottom > 100) {
      bottomPadding = MediaQuery.of(context).viewInsets.bottom;
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            'https://i.picsum.photos/id/929/1200/1300.jpg?hmac=sTNf1uJpiBjCO8tD7aQMW93qxTL-uHVyyp3qDQ4JDqw',
            fit: BoxFit.fill,
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const TextField(),
                textWidget("1"),
                textWidget("2"),
                textWidget("3"),
                textWidget("4"),
                textWidget("5"),
                textWidget("6"),
                textWidget("7"),
                textWidget("8"),
                textWidget("9"),
                MediaQuery(
                    data: MediaQueryData.fromWindow(WidgetsBinding.instance!.window).copyWith(),
                    child: Builder(builder: (context) {
                      return Padding(padding: EdgeInsets.only(bottom: bottomPadding));
                    })),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
