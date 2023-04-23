import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/* Lay out a widget */
/* 1, 2 */
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
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     /* Material app */
//     // return MaterialApp(
//     //   title: 'Flutter layout demo',
//     //   home: Scaffold(
//     //     appBar: AppBar(
//     //       title: const Text('Flutter layout demo'),
//     //     ),
//     //     body: const Center(
//     //       child: Text('Hello World'),
//     //     ),
//     //   ),
//     // );
//     /* Non-Material app */
//     return Container(
//       decoration: const BoxDecoration(color: Colors.white),
//       child: const Center(
//         child: Text( // child는 하나만 넣을 수 있고, row나 column을 열어서 multiple children을 넣을 수 있는 듯
//           'Hello World',
//           textDirection: TextDirection.ltr,
//           style: TextStyle(
//             fontSize: 32,
//             color: Colors.black87,
//           ),
//         ),
//       ),
//     );
//   }
// }

/* Lay out multiple widgets vertically and horizontally */
void main() {
  debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       appBar: AppBar(),
  //       body: 
  //       Column(children: [
  //         Row(
  //           // children: [
  //           //   Column(
  //           //     children: const [
  //           //       Center(child: Text('text1', style: TextStyle(fontSize: 23.0), textAlign: TextAlign.center,),),
  //           //       SizedBox(width: 100, height: 50),
  //           //     ],
  //           //   ),
  //           // ],
  //           /* Sizing Widgets */
  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           children: [
  //             Expanded(
  //               child: Image.asset('images/damgom.JPG')
  //               ),
  //             Expanded(
  //               flex: 2,
  //               child: Image.asset('images/haebojago.jpg')
  //               ),
  //             Expanded(
  //               child: Image.asset('images/qoo.png')
  //               ),
  //             ],
  //           ),
  //           Row(
  //             mainAxisSize: MainAxisSize.min, // 얘는 대체 뭥미.. row를 가장 작은 크기로 쓴다는 것인가
  //             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             children: [
  //               Icon(Icons.star, color: Colors.green[500]), // 왜 얘는 const가 안 붙는가
  //               Icon(Icons.star, color: Colors.green[500]),
  //               Icon(Icons.star, color: Colors.green[500]),
  //               const Icon(Icons.star, color: Colors.black),
  //               const Icon(Icons.star, color: Colors.black),
  //             ],
  //           )
  //         ],
  //       )
  //     )
  //   );
  // }

  /* Nesting rows and columns */
  @override
  Widget build(BuildContext context) {
    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );

    final ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          const Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );

    const descTextStyle = TextStyle( // textstyle 통일
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    // DefaultTextStyle.merge() allows you to create a default text
    // style that is inherited by its child and all subsequent children.
    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row( // row 안에
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [ // icon + text들 column으로 묶어서 3개 넣기
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                const Text('PREP:'),
                const Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                const Text('COOK:'),
                const Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                const Text('FEEDS:'),
                const Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );

    final leftColumn = Container(
      // decoration: const BoxDecoration( // Container decoration
      //       color: Colors.red,
      // ),
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20), // 왼쪽 container 만들고 padding 넣기
      child: Column(
        children: [
          ratings,
          iconList,
        ],
      ),
    );
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
          height: 600,
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 440, // box size 고정
                  child: leftColumn,
                ),
              ],
            ),
          ),
        ),
      ),
      )
    );
  }

}


      