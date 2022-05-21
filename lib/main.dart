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
  var likes = [0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return const Dialog(child: Text('안녕'));
              });
        },
      ),
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (c, i) {
            return Card(
              child: ListTile(
                  leading: Text(likes[i].toString()),
                  title: Text(name[i]),
                  subtitle: const Text('친한 친구'),
                  trailing: ElevatedButton(
                    child: const Text('좋아요'),
                    onPressed: () {
                      setState(() {
                        likes[i]++;
                      });
                    },
                  )),
            );
          }),
      bottomNavigationBar: const BottomNavigation(),
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
