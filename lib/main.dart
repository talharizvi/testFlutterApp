import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
  //runApp(const UseCard(1))
}

var data = [
  'Hello',
  'World',
  'Hello',
  'World',
  'Hello',
  'World',
];

class MainApp extends StatelessWidget {
  //const MainApp({super.key});
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: Scaffold(
    //     body: Center(
    //       child: Image.network(
    //           'https://docs.flutter.dev/assets/images/docs/owl.jpg'),
    //     ),
    //   ),
    // );
    return Directionality(
      textDirection: TextDirection.ltr,
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Text(data[index]);
        },
      ),
    );
    // return ListView.builder(
    //   itemCount: data.length,
    //   itemBuilder: (context, index) {
    //     return Text(data[index], textDirection: TextDirection.ltr);
    //   },
    // );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.index,
    required this.onPress,
  });

  final int index;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Text('Card $index'),
          TextButton(
            onPressed: onPress,
            child: const Text('Press'),
          ),
        ],
      ),
    );
  }
}

class UseCard extends StatelessWidget {
  const UseCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      index: index,
      onPress: () {
        print('Card $index');
      },
    );
  }
}
