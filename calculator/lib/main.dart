import 'package:flutter/material.dart';

void main() {
  // (int a, int b){
  //   print("${a+b}");
  // }(5,6);
  // add(5,6);
  calculator(7, 8, (p0, p1) => { print("${ p0 % p1}")});
  runApp(const MyApp());
}

void add(int a, int b){
  print("${a+b}");
}

void calculator(double a, double b,  Function(double , double) operator){
  operator(a,b);
}





class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String result = "";
  double inputA = 0.0;
  double inputB = 0.0;
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
              'This is a simple calculator',
            ),
            TextField(onChanged: (value){
              double? optDouble = double.parse(value);
              if(optDouble != null){
                inputA = optDouble!;
              }
            },),
            TextField(onChanged: (value){
              double? optDouble = double.parse(value);
              if(optDouble != null){
                inputB = optDouble!;
              }
            },),
            Text(
              result,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextButton(onPressed: (){
              result = "${inputA + inputB}";
            }, child: Text("Add")),
          ],
        ),
      ),
    );
  }
}
