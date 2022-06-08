import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name = ['google', 'facebook', 'apple'];
  var total = 3;

  addOne() {
    setState(() {
      total++;
    });
  }

  addName(userInput) {
    setState(() {
      name.add(userInput);
      total++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return DialogUI(
                  addOne: addOne,
                  addName: addName,
                );
              });
        },
      ),
      appBar: AppBar(
        title: Text(total.toString()),
      ),
      body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (c, i) {
            return Card(
              child: ListTile(
                  title: Text(name[i]),
              )
            );
          }),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}

class DialogUI extends StatelessWidget {
  DialogUI({
    Key? key,
    required this.addOne,
    required this.addName,
  }) : super(key: key);
  final Function addOne;
  final Function addName;
  var inputData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(20),
        height: 300,
        width: 300,
        child: Column(
          children: [
            TextField(controller: inputData),
            TextButton(
                onPressed: () {
                  addName(inputData.text);
                },
                child: Text('완료')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('취소')),
          ],
        ),
      ),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.phone),
            Icon(Icons.message),
            Icon(Icons.contact_page),
          ],
        ),
      ),
    );
  }
}
