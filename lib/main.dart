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
      appBar: AppBar(),
      body: Container(
        height: 150,
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                // If image ratio is diff, define parent w/h and use fit fill(첨부한 이미지의 비율이 다를때)
                height: 150,
                width: 150,
                child: Image.asset(
                  'emart.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '허먼밀러 의자 팝니다',
                    style: TextStyle(fontSize: 20),
                  ),
                  const Text(
                    '주월 1동',
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                  const Text(
                    '7,000원',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [Icon(Icons.favorite), Text('4')],
                  ), //Row
                ],
              ), //Column
            ),
          ],
        ),
      ),
    ));
  }
}
