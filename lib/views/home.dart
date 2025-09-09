import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text('Movies'.toUpperCase()),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        titleTextStyle: TextStyle(
          fontFamily: 'Arial',
          fontWeight: FontWeight.bold,
          fontSize: 40,
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}

// Row(
//       children: [
//         Expanded(flex: 10, child: Container(color: Colors.green, height: 500)),
//         Expanded(flex: 2, child: Container(color: Colors.orange, height: 500)),
//       ],
//     );

//  Stack(
//       children: [
//         Container(width: 200, height: 200, color: Colors.blue),
//         Positioned(
//           top: 20,
//           left: 20,
//           child: Container(width: 100, height: 100, color: Colors.red),
//         ),
//       ],
//     );

      // appBar: AppBar(
      //   title: const Text("Titre de la page"),
      //   leading: IconButton(
      //     onPressed: () {
      //       print('Menu cliqué');
      //     },
      //     icon: const Icon(Icons.menu),
      //   ),
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         print('recherche');
      //       },
      //       icon: const Icon(Icons.search),
      //     ),
      //   ],
      // ),
      // backgroundColor: Colors.brown[300],
      // body: Center(
      //   child: Image.asset(
      //     'assets/luffy.webp',
      //     width: 400,
      //     height: 450,
      //     fit: BoxFit.cover,
      //   ),
      // ),