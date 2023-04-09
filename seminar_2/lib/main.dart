import 'package:flutter/material.dart';

/* 1-2 */
// void main() {
//   runApp(const Center(
//       child: Text(
//         'Hello, world!',
//         textDirection: TextDirection.ltr,
//       ),
//     ),
//   );
// }

/* 3 */
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//       return const MaterialApp(
//       home: Icon(
//         Icons.star,
//         color: Colors.red,
//       ),
//     );
//   }
// }

/* 4 */
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /* Material app */
    // return MaterialApp(
    //   title: 'Flutter layout demo',
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Flutter layout demo'),
    //     ),
    //     body: const Center(
    //       child: Text('Hello World'),
    //     ),
    //   ),
    // );
    /* Non-Material app */
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const Center(
        child: Text( // child는 하나만 넣을 수 있고, row나 column을 열어서 multiple children을 넣을 수 있는 듯
          'Hello World',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 32,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}

      