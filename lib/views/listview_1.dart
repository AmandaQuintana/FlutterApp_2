import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import '../domain/firebase_connection.dart';

class ListView1 extends StatelessWidget {
  ListView1({Key? key}) : super(key: key);

  final List<Map<String, String>> _games = [
    {
      "image":
          "https://www.lavanguardia.com/files/og_thumbnail/uploads/2021/09/02/6130d99519f60.png",
      "name": "Roblox"
    },
    {
      "image":
          "https://areajugones.sport.es/wp-content/uploads/2021/02/imagen-2021-02-08-091948-1080x609.jpg",
      "name": "Silent Hill"
    },
    {
      "image":
          "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/950/public/media/image/2021/07/minecraft-classic-2404703.jpg?itok=bIUJiYXF",
      "name": "Minecraft"
    },
    {
      "image":
          "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/480/public/media/image/2022/01/final-fantasy-vii-remake-2602103.jpg?itok=kqwKiYYS",
      "name": "Final Fantasy"
    },
    {
      "image":
          "https://www.dexerto.es/wp-content/uploads/sites/3/2020/10/conociendo-a-seraphine-la-nueva-campeona-de-league-of-legends.jpg",
      "name": "League of Legends"
    },
    {
      "image":
          "https://static.wikia.nocookie.net/halo/images/3/3e/Halo_infinite_vertical.png/revision/latest/scale-to-width-down/1200?cb=20200722153039&path-prefix=es",
      "name": "Halo Infinity"
    },
    {
      "image": "https://www.larepublica.ec/wp-content/uploads/2020/08/fort.jpg",
      "name": "Fornite"
    },
    {
      "image":
          "https://www.notebookcheck.org/fileadmin/Notebooks/News/_nc3/F2p_Rewards_1024x576_png.png",
      "name": "PUBG"
    },
    {
      "image": "https://i.blogs.es/c9aee2/apex-legends-revenant/1366_2000.jpeg",
      "name": "Apex Legends"
    }
  ];

  final firebase = FirebaseConnetion();

  @override
  Widget build(BuildContext context) {
    callDatabase();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Video Juegos'),
        ),
        body: ListView.builder(
            itemCount: _games.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: Image.network(_games[index]["image"]!).image,
                ),
                title: Text(_games[index]["name"]!),
                onTap: () => {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                            title: Text(_games[index]["name"]!),
                            content: Image(
                              image:
                                  Image.network(_games[index]["image"]!).image,
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Go Back'),
                                child: const Text('Go Back'),
                              )
                            ],
                          ))
                },
              );
            }));
  }

  static final FirebaseDatabase _database = FirebaseDatabase.instance;

  DatabaseReference instanceFirebase() {
    return _database.ref('/Registros');
  }

  void callDatabase() async {
    /*DatabaseReference starCountRef =
        FirebaseDatabase.instance.ref('/Registros');
    starCountRef.onValue.listen((event) {
      final data = event.snapshot.value;
      print(data.toString());
    });*/

    DatabaseReference _registros = instanceFirebase();
    DataSnapshot response = await _registros.get();
    print(response.value);
  }
}
