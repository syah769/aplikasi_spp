import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //scaffold adalah widget
    return Scaffold(
        //dalam scaffold, ada argument appBar dimana ia diisi dengan widgt AppBar
        appBar: AppBar(
          //dalam ni pulak ada argument title dimana menggunakan widget Text
          title: Text("Hi Flutter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Saya belajar flutter"),
              Text("Nama saya: Syahril")
            ],
          ),
        ));
  }
}
