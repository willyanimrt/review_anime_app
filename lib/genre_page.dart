import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:review_anime/desc_page.dart';
import 'package:review_anime/models/data.dart';

class CategoryPage extends StatefulWidget {
  final String genre;
  final List<DataAnime> dataForGenre; // Add this parameter

  const CategoryPage({Key? key, 
    required this.genre, 
    required this.dataForGenre
    }) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}
  class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.genre,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        iconTheme: IconThemeData(color: Theme.of(context).primaryColorLight),
        backgroundColor: Colors.grey[800],// Tampilkan nama kategori di app bar
      ),
      body: ListView.builder(
        //physics: NeverScrollableScrollPhysics(),
        itemCount:  widget.dataForGenre.length,
        itemBuilder: (context, index) {
          final DataAnime data = widget.dataForGenre[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DescPage(
                          // Untuk berpindah ke halaman DescPage
                          image: data.avatar!,
                          name: data.name!,
                          genre: data.genre!,
                          descripe: data.descripe!)));
            },
            child: Card(
              elevation: 10,
              child: Row(
                children: <Widget>[
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Image.network(
                              data.avatar!,
                              width: 150, // Lebar gambar yang diinginkan
                              height: 150,
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          height: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 15),
                              Text(
                                data.name!,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              Container(
                                width: 150,
                                child: Text(
                                  data.genre!,
                                ),
                              ),
                              SizedBox(height: 10),
                              RatingBar.builder(
                                initialRating: 5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 18,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.red,
                                ),
                                onRatingUpdate: (index) {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}