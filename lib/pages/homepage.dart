import 'package:flutter/material.dart';
import 'package:responsi_123200022/pages/b_nasional.dart';
import 'package:responsi_123200022/pages/b_olahraga.dart';
import 'package:responsi_123200022/pages/b_teknologi.dart';
import 'package:responsi_123200022/pages/b_terbaru.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 100),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://cdn.cnnindonesia.com/cnnid/images/logo_cnn_fav.png",
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BeritaTerbaruPage(),
                              ));
                        },
                        child: Text("TERBARU")),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BeritaNasionalPage(),
                              ));
                        },
                        child: Text("NASIONAL")),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BeritaOlahragaPage(),
                              ));
                        },
                        child: Text("OLAHRAGA")),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BeritaTeknologiPage(),
                              ));
                        },
                        child: Text("TEKNOLOGI")),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
