import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  void onClickBtn() {
    setState(() {
      // setState: build 함수를 재실행하여 UI를 업데이트함
      counter = counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFFF4EDD8),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Click Count',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  '$counter',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                IconButton(
                  iconSize: 40,
                  onPressed: onClickBtn,
                  icon: Icon(Icons.add_box),
                )
              ],
            ),
          )),
    );
  }
}
