import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:review_anime/genre_page.dart';
import 'package:review_anime/desc_page.dart';
import 'package:review_anime/models/data.dart';
import 'package:review_anime/user.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<DataAnime> data = 
                  data_user.map((e) => DataAnime.fromJson(e)).toList(); // Inisialisasi data produk dari data_user
  List<DataAnime> data2 = 
                  data_user2.map((e) => DataAnime.fromJson(e)).toList();
  List<DataAnime> dataaction = 
                  data_action.map((e) => DataAnime.fromJson(e)).toList();
  List<DataAnime> datafantasy = 
                  data_fantasy.map((e) => DataAnime.fromJson(e)).toList();
  List<DataAnime> dataadventure = 
                  data_adventure.map((e) => DataAnime.fromJson(e)).toList();
  List<DataAnime> datacomedy = 
                  data_comedy.map((e) => DataAnime.fromJson(e)).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[800],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 50,horizontal: 10),
              color: Color.fromARGB(255, 99, 95, 95),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Selamat Datang Willy",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://i.pinimg.com/564x/d3/0e/0f/d30e0f6bab82c3937c90c1485f0c0942.jpg",
                        ),
                        radius: 30,
                      ),
                    ],
                  ),
                  const Text(
                    "Bagaimana kabar anda?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Container(
              child: Stack(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search_outlined,
                        color: Colors.red,
                      ),
                      hintText: "Apa yang kamu sukai?",
                      border: InputBorder.none,
                    ),
                  ),
                  Positioned(
                    bottom: 6,
                    right: 12,
                    child: Container(
                      child: const Icon(
                        Icons.mic_none_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Divider(
                color: Colors.black,
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Genre",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    //Single Item
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: 100, // Lebar kotak
                        height: 50, // Tinggi kotak
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 204, 45, 45),
                          borderRadius: BorderRadius.all(Radius.circular(25),),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(0, 3)
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryPage(
                                  genre: "Action",
                                  dataForGenre: dataaction)));
                          },
                          child: Text(
                            "Action", // Nama kategori
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15, // Warna teks
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: 100, // Lebar kotak
                        height: 50, // Tinggi kotak
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 204, 45, 183),
                          borderRadius: BorderRadius.all(Radius.circular(25),),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(0, 3)
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryPage(
                                  genre: "Fantasy",
                                  dataForGenre: datafantasy)));
                            // Fungsi yang akan dijalankan ketika tombol ditekan
                          },
                          child: Text(
                            "Fantasy", // Nama kategori
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15, // Warna teks
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: 120, // Lebar kotak
                        height: 50, // Tinggi kotak
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 45, 204, 87),
                          borderRadius: BorderRadius.all(Radius.circular(25),),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(0, 3)
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryPage(
                                  genre: "Adventure",
                                  dataForGenre: dataadventure)));
                          },
                          child: Text(
                            "Adventure", // Nama kategori
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15, // Warna teks
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: 110, // Lebar kotak
                        height: 50, // Tinggi kotak
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 199, 204, 45),
                          borderRadius: BorderRadius.all(Radius.circular(25),),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(0, 3)
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryPage(
                                  genre: "Comedy",
                                  dataForGenre: datacomedy)));
                          },
                          child: Text(
                            "Comedy", // Nama kategori
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15, // Warna teks
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Popular",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      "View All",
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DescPage(
                                  // Untuk berpindah ke halaman DescPage
                                  image: data[index].avatar!,
                                  name: data[index].name!,
                                  genre: data[index].genre!,
                                  descripe: data[index].descripe!)));
                    },
                    child: Card(
                      elevation: 10,
                      child: Container(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Image.network(
                              data[index].avatar!,
                              width: 100,
                              height: 120,
                            ),
                            SizedBox(height: 8),
                            Text(
                              data[index].name!,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Latest Anime",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    child: Text("View All"),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 910,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: data2.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DescPage(
                                  // Untuk berpindah ke halaman DescPage
                                  image: data2[index].avatar!,
                                  name: data2[index].name!,
                                  genre: data2[index].genre!,
                                  descripe: data2[index].descripe!)));
                    },
                    child: Card(
                      elevation: 10,
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Image.network(
                                      data2[index].avatar!,
                                      width: 150, // Lebar gambar yang diinginkan
                                      height: 150,
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 150,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 15),
                                      Text(
                                        data2[index].name!,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 8),
                                      Container(
                                        width: 150,
                                        child: Text(
                                          data2[index].genre!,
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
            ),
          ],
        ),
      ),
    );
  }
}
