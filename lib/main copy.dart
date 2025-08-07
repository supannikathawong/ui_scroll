import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 125, 221, 243),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = List<String>.generate(100, (i) => 'Item ${i + 1}');
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter6'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 3 / 2,
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int idx) {
          return Container(
            color: Colors.blue[100 + (idx % 6) * 100],
            child: Text(items[idx]),
          );
        },
      ),
    );
  }
}
