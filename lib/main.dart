import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/videocard.dart';

import 'models/video_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<VideoModel> items = [
    VideoModel(
        'https://i.ytimg.com/vi/qBCLIJdFCvU/maxresdefault.jpg',
        'Haciendo pruebas clonando youtube ui',
        '10:14',
        'https://img2.freepng.es/20180625/req/kisspng-computer-icons-avatar-business-computer-software-user-avatar-5b3097fcae25c3.3909949015299112927133.jpg',
        'Alexis Hdz',
        '200k',
        '24/02/2022'),
    VideoModel(
        'https://i.ytimg.com/vi/qBCLIJdFCvU/maxresdefault.jpg',
        'Haciendo pruebas clonando youtube ui',
        '10:14',
        'https://img2.freepng.es/20180625/req/kisspng-computer-icons-avatar-business-computer-software-user-avatar-5b3097fcae25c3.3909949015299112927133.jpg',
        'Alexis Hdz',
        '200k',
        '24/02/2022'),
    VideoModel(
        'https://i.ytimg.com/vi/qBCLIJdFCvU/maxresdefault.jpg',
        'Haciendo pruebas clonando youtube ui',
        '10:14',
        'https://img2.freepng.es/20180625/req/kisspng-computer-icons-avatar-business-computer-software-user-avatar-5b3097fcae25c3.3909949015299112927133.jpg',
        'Alexis Hdz',
        '200k',
        '24/02/2022')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
            )),
        title: Image.asset(
          "assets/logo.png",
          width: 100,
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Explora',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    width: double.infinity,
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          child: FilterChip(
                            label: const Text('Flutter'),
                            onSelected: (value) {},
                            elevation: 0,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          child: FilterChip(
                            label: Text('C#'),
                            onSelected: (value) {},
                            elevation: 0,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          child: FilterChip(
                            label: const Text('Net 6'),
                            onSelected: (value) {},
                            elevation: 0,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          child: FilterChip(
                            label: const Text('Desarrollo web'),
                            onSelected: (value) {},
                            elevation: 0,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          child: FilterChip(
                            label: const Text('FreeStyle'),
                            onSelected: (value) {},
                            elevation: 0,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Text(
                    'Para ti',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  VideoCard(
                    model: items[0],
                  ),
                  VideoCard(
                    model: items[0],
                  ),
                  VideoCard(
                    model: items[0],
                  )
                ],
              ))),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Principal'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection), label: 'Shorts'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Shorts'),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions), label: 'Suscripciones'),
            BottomNavigationBarItem(
                icon: Icon(Icons.playlist_play), label: 'Biblioteca'),
          ]),
    );
  }
}
