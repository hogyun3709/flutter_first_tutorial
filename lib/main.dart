import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          centerTitle: false,
          leading: const Icon(Icons.ad_units_rounded),
          title: const Text(
            'hello',
          )),
      body: SizedBox(
        child: Row(
          children: [
            const Text(
              'hello world',
              style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w700),
            ),
            TextButton(onPressed: () {}, child: const Text('button')),
            // 구글 물 뺀 디자인 - Inkwell 효과삭제
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber),
                  splashFactory: NoSplash.splashFactory),
              child: const Text('ElevatedButton'),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.safety_check))
          ],
        ),
      ),
    ));
  }
}
