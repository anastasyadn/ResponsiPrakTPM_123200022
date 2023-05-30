import 'package:flutter/material.dart';
import 'package:responsi_123200022/api/base_network.dart';
import 'package:responsi_123200022/model/list_news_model.dart';
import 'package:responsi_123200022/pages/detail_berita.dart';

class BeritaTeknologiPage extends StatefulWidget {
  const BeritaTeknologiPage({super.key});

  @override
  State<BeritaTeknologiPage> createState() => _BeritaTeknologiPageState();
}

class _BeritaTeknologiPageState extends State<BeritaTeknologiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CNN TEKNOLOGI"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Container(
          child: FutureBuilder(
              future: BaseNetwork.get('teknologi'),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                  return Container(
                    child: Center(child: CircularProgressIndicator()),
                  );
                } else if (!snapshot.hasData) {
                  return Container(
                    child: Center(child: Text("Tidak ada data")),
                  );
                } else {
                  ListNewsModel list = ListNewsModel.fromJson(snapshot.data);
                  return ListView.builder(
                      itemCount: list.data!.posts!.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailBeritaPage(
                                      judul: list.data!.posts![index].title!,
                                      pubDate:
                                          list.data!.posts![index].pubDate!,
                                      thumbnail:
                                          list.data!.posts![index].thumbnail!,
                                      description:
                                          list.data!.posts![index].description!,
                                      link: list.data!.posts![index].link!,
                                    ),
                                  ));
                            },
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                    list.data!.posts![index].thumbnail!,
                                    width: 120,
                                    height: 80,
                                    fit: BoxFit.cover,
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            const Icon(Icons.error),
                                  ),
                                  Expanded(
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 5),
                                          child: Text(list
                                              .data!.posts![index].title!))),
                                ]),
                          ),
                        );
                      });
                }
              }),
        ));
  }
}
