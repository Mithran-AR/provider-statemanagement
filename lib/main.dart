import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'counter.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<Counterprovider>(create: (_) => Counterprovider()),

    ],
    child: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final provider=provider.of<Counterprovider>(context,lisen:false);
    return Scaffold(
      body: MyCount(),
      floatingActionButton: FloatingActionButton( onPressed: () {  },child: Text("increment"),),

    );
  }
}
class MyCount extends StatelessWidget {
  const MyCount({super.key});

  @override

  Widget build(BuildContext context) {
    return Consumer<Counterprovider>( builder: (context,provider, child) {
      return Center(
        child: Text("${Provider.}"),
      );
    },);
  }
}




