import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: const MyHomePage(title: 'Flutter Demo Home Page'),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String r = "";
  double value1 = 0.0;
  double value2 = 0.0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            TextField( onChanged: (value){
              double? opt_value =  double.parse(value);
              if(opt_value != null ) {
                value1 = opt_value;
              }
            }),
            TextField( onChanged: (value){
              double? opt_value =  double.parse(value);
              if(opt_value != null ) {
                value2 = opt_value;
              }
            }),
            Text(
              r,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextButton(onPressed: (){
               r =  "${value1 + value2}";
               setState(() {
               });
               print(r);
            }, child: Text("Add"))
          ],
        ),
      ),
    );
  }
}
