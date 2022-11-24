import 'package:flutter/material.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/mywatchlist.dart';

class Detail extends StatefulWidget {
  String watched;
  String title;
  double rating;
  String releaseDate;
  String review;

  Detail(
      {super.key,
      required this.watched,
      required this.title,
      required this.rating,
      required this.releaseDate,
      required this.review});
  @override
  State<StatefulWidget> createState() => _Detail();
}

class _Detail extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('Counter'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                );
              },
            ),
            ListTile(
              title: const Text('Form'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDataPage()),
                );
              },
            ),
            ListTile(
              title: const Text('My Watch List'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWatchList()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                widget.title,
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Table(
            columnWidths: const {1: FractionColumnWidth(.77)},
            children: [
              TableRow(
                children: [
                  const Text(
                    "Release Date: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(widget.releaseDate)
                ],
              ),
              TableRow(
                children: [
                  const Text(
                    "Rating: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("${widget.rating.toString()}/5"),
                ],
              ),
              TableRow(
                children: [
                  const Text(
                    "Status: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(widget.watched == "YES" ? "watched" : "not watched"),
                ],
              ),
              TableRow(
                children: [
                  const Text(
                    "Review: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(widget.review)
                ],
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50), // NEW
          ),
          child: const Text("Back"),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MyWatchList()),
            );
          },
        ),
      ),
    );
  }
}
