import 'package:flutter/material.dart';
import 'package:test/widget/movie_card.dart';

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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Tous'.toUpperCase(),
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'western'.toUpperCase(),
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'horreur'.toUpperCase(),
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      // 'comédie',
                      'comédie'.toUpperCase(),
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Center(
                child: Container(
                  width: 350,
                  height: 220,
                  child: Image.asset(
                    'assets/SpiderMan.webp',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                top: 175,
                left: 340,
                // width: 300,
                // height: 450,
                child: Icon(Icons.play_circle_filled, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              // 1er film de la colonne
              children: [
                MovieCard(
                  moviePics: 'assets/Superman.webp',
                  synopsis:
                      "orem Ipsum is simply dummy text of the printing and typesetting industry. but also the leap into electronic typesetting, unchanged.",
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                  ),
                ),
                // 2ème film
                MovieCard(
                  moviePics: 'assets/Joker.webp',
                  synopsis:
                      "orem Ipsum is simply dummy text of the printing and typesetting industry. but also the leap into electronic typesetting, unchanged.",
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                  ),
                ),
                // 3ème film
                MovieCard(
                  moviePics: 'assets/Avatar.webp',
                  synopsis:
                      "orem Ipsum is simply dummy text of the printing and typesetting industry. but also the leap into electronic typesetting, unchanged.",
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Recherche"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
      ),
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