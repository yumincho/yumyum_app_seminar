/* 1. Hello World */
// import 'package:flutter/material.dart';
// 
// void main() {
//   runApp(const Center(
//       child: Text(
//         'Hello, world!',
//         textDirection: TextDirection.ltr,
//       ),
//     ),
//   );
// }

/* 2. Basic Widgets */
// import 'package:flutter/material.dart';

// class MyAppBar extends StatelessWidget {
//   const MyAppBar({required this.title, super.key});

//   // Fields in a Widget subclass are always marked "final".

//   final Widget title;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 56.0, // in logical pixels
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       decoration: BoxDecoration(color: Colors.blue[500]),
//       // Row is a horizontal, linear layout.
//       child: Row(
//         children: [
//           const IconButton(
//             icon: Icon(Icons.menu),
//             tooltip: 'Navigation menu',
//             onPressed: null, // null disables the button
//           ),
//           // Expanded expands its child
//           // to fill the available space.
//           Expanded(
//             child: title,
//           ),
//           const IconButton(
//             icon: Icon(Icons.search),
//             tooltip: 'Search',
//             onPressed: null,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyScaffold extends StatelessWidget {
//   const MyScaffold({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Material is a conceptual piece
//     // of paper on which the UI appears.
//     return Material(
//       // Column is a vertical, linear layout.
//       child: Column(
//         children: [
//           MyAppBar(
//             title: Text(
//               'Example title',
//               style: Theme.of(context) //
//                   .primaryTextTheme
//                   .titleLarge,
//             ),
//           ),
//           const Expanded(
//             child: Center(
//               child: Text('Hello, world!'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(
//     const MaterialApp(
//       title: 'My app', // used by the OS task switcher
//       home: SafeArea(
//         child: MyScaffold(),
//       ),
//     ),
//   );
// }

/* 3. Using Material Components */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       title: 'Flutter Tutorial',
//       home: TutorialHome(),
//     ),
//   );
// }

// class TutorialHome extends StatelessWidget {
//   const TutorialHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Scaffold is a layout for
//     // the major Material Components.
//     return Scaffold(
//       appBar: AppBar(
//         leading: const IconButton(
//           icon: Icon(Icons.menu),
//           tooltip: 'Navigation menu',
//           onPressed: null,
//         ),
//         title: const Text('Example title'),
//         actions: const [
//           IconButton(
//             icon: Icon(Icons.search),
//             tooltip: 'Search',
//             onPressed: null,
//           ),
//         ],
//       ),
//       // body is the majority of the screen.
//       body: const Center(
//         child: Text('Hello, world!'),
//       ),
//       floatingActionButton: const FloatingActionButton(
//         tooltip: 'Add', // used by assistive technologies
//         onPressed: null,
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

/* 4. Handling Gestures */
// import 'package:flutter/material.dart';

// class MyButton extends StatelessWidget {
//   const MyButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector( // detects gestures made by the user
//       onTap: () {
//         print('MyButton was tapped!');
//       },
//       child: Container(
//         height: 50.0,
//         padding: const EdgeInsets.all(8.0),
//         margin: const EdgeInsets.symmetric(horizontal: 8.0),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5.0),
//           color: Colors.lightGreen[500],
//         ),
//         child: const Center(
//           child: Text('Engage'),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: MyButton(),
//         ),
//       ),
//     ),
//   );
// }

/* 5. Changing Widgets in Response to Input */
// import 'package:flutter/material.dart';

// class Counter extends StatefulWidget {
//   // This class is the configuration for the state.
//   // It holds the values (in this case nothing) provided
//   // by the parent and used by the build  method of the
//   // State. Fields in a Widget subclass are always marked
//   // "final".

//   const Counter({super.key});

//   @override
//   State<Counter> createState() => _CounterState();
// }

// class _CounterState extends State<Counter> {
//   int _counter = 0;

//   void _increment() {
//     setState(() {
//       // This call to setState tells the Flutter framework
//       // that something has changed in this State, which
//       // causes it to rerun the build method below so that
//       // the display can reflect the updated values. If you
//       // change _counter without calling setState(), then
//       // the build method won't be called again, and so
//       // nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called,
//     // for instance, as done by the _increment method above.
//     // The Flutter framework has been optimized to make
//     // rerunning build methods fast, so that you can just
//     // rebuild anything that needs updating rather than
//     // having to individually changes instances of widgets.
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         ElevatedButton(
//           onPressed: _increment,
//           child: const Text('Increment'),
//         ),
//         const SizedBox(width: 16),
//         Text('Count: $_counter'),
//       ],
//     );
//   }
// }

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Counter(),
//         ),
//       ),
//     ),
//   );
// }

/* 5.1. */
// import 'package:flutter/material.dart';

// class CounterDisplay extends StatelessWidget { // stateless인데 어떻게 변하는 거지?
//   const CounterDisplay({required this.count, super.key});

//   final int count;

//   @override
//   Widget build(BuildContext context) {
//     return Text('Count: $count');
//   }
// }

// class CounterIncrementor extends StatelessWidget {
//   const CounterIncrementor({required this.onPressed, super.key});

//   final VoidCallback onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: onPressed,
//       child: const Text('Increment'),
//     );
//   }
// }

// class Counter extends StatefulWidget {
//   const Counter({super.key});

//   @override
//   State<Counter> createState() => _CounterState();
// }

// class _CounterState extends State<Counter> {
//   int _counter = 0;

//   void _increment() {
//     setState(() {
//       ++_counter;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         CounterIncrementor(onPressed: _increment), // 여기서 매번 새로 build해주는 것인가
//         const SizedBox(width: 16),
//         CounterDisplay(count: _counter),
//       ],
//     );
//   }
// }

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Counter(),
//         ),
//       ),
//     ),
//   );
// }

/* 6. Bringing it all together */
// import 'package:flutter/material.dart';

// class Product {
//   const Product({required this.name});

//   final String name;
// }

// typedef CartChangedCallback = Function(Product product, bool inCart);

// class ShoppingListItem extends StatelessWidget {
//   ShoppingListItem({
//     required this.product,
//     required this.inCart,
//     required this.onCartChanged,
//   }) : super(key: ObjectKey(product));

//   final Product product;
//   final bool inCart;
//   final CartChangedCallback onCartChanged;

//   Color _getColor(BuildContext context) {
//     // The theme depends on the BuildContext because different
//     // parts of the tree can have different themes.
//     // The BuildContext indicates where the build is
//     // taking place and therefore which theme to use.

//     return inCart //
//         ? Colors.black54
//         : Theme.of(context).primaryColor;
//   }

//   TextStyle? _getTextStyle(BuildContext context) {
//     if (!inCart) return null;

//     return const TextStyle(
//       color: Colors.black54,
//       decoration: TextDecoration.lineThrough,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       onTap: () {
//         onCartChanged(product, inCart);
//       },
//       leading: CircleAvatar(
//         backgroundColor: _getColor(context),
//         child: Text(product.name[0]),
//       ),
//       title: Text(product.name, style: _getTextStyle(context)),
//     );
//   }
// }

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: ShoppingListItem(
//             product: const Product(name: 'Chips'),
//             inCart: true,
//             onCartChanged: (product, inCart) {},
//           ),
//         ),
//       ),
//     ),
//   );
// }

/* 6.1. */
import 'package:flutter/material.dart';

class Product {
  const Product({required this.name});

  final String name;
}

typedef CartChangedCallback = Function(Product product, bool inCart);

class ShoppingListItem extends StatelessWidget { // 얘는 매번 새로 만드니까 stateless해도 됨 (parent creates a new one)
  ShoppingListItem({
    required this.product,
    required this.inCart,
    required this.onCartChanged,
  }) : super(key: ObjectKey(product)); // 어디다가 쓰는 애지?

  final Product product;
  final bool inCart;
  final CartChangedCallback onCartChanged;

  Color _getColor(BuildContext context) {
    // The theme depends on the BuildContext because different
    // parts of the tree can have different themes.
    // The BuildContext indicates where the build is
    // taking place and therefore which theme to use.

    return inCart //
        ? Colors.black54
        : Theme.of(context).primaryColor;
  }

  TextStyle? _getTextStyle(BuildContext context) {
    if (!inCart) return null;

    return const TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onCartChanged(product, inCart);
      },
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(product.name[0]),
      ),
      title: Text(
        product.name,
        style: _getTextStyle(context),
      ),
    );
  }
}

class ShoppingList extends StatefulWidget { // 얘는 state를 담는 dynamic한 애니까 stateful
  const ShoppingList({required this.products, super.key});

  final List<Product> products;

  // The framework calls createState the first time
  // a widget appears at a given location in the tree.
  // If the parent rebuilds and uses the same type of
  // widget (with the same key), the framework re-uses
  // the State object instead of creating a new State object.

  @override
  State<ShoppingList> createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  final _shoppingCart = <Product>{};

  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      // When a user changes what's in the cart, you need
      // to change _shoppingCart inside a setState call to
      // trigger a rebuild.
      // The framework then calls build, below,
      // which updates the visual appearance of the app.

      if (!inCart) {
        _shoppingCart.add(product);
      } else {
        _shoppingCart.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((product) {
          return ShoppingListItem( // item들을 하나하나 return
            product: product,
            inCart: _shoppingCart.contains(product), // 얘가 shoppingCart에 있나 없나 체크
            onCartChanged: _handleCartChanged,
          );
        }).toList(),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    title: 'Shopping App',
    home: ShoppingList(
      products: [
        Product(name: 'Eggs'),
        Product(name: 'Flour'),
        Product(name: 'Chocolate chips'),
      ],
    ),
  ));
}