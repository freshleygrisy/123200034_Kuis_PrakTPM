import 'package:flutter/material.dart';
import 'data_buku.dart';
import 'home_page.dart';

class DetailPage extends StatefulWidget {
  final DataBuku place;
  const DetailPage({Key? key, required this.place}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool _isFavorited = false;

  void pinjamBuku() {
    // Logika untuk meminjam buku
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.place.author),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.network(widget.place.imageLink),
              ],
            ),
          ),
          Text(
            "Judul                    : " +
                widget.place.title +
                "\n" +
                "Penulis                  : " +
                widget.place.author +
                "\n" +
                "Bahasa                 :" +
                widget.place.language +
                "\n" +
                "Negara                 : " +
                widget.place.country +
                "\n" +
                "Jumlah Halaman : " +
                widget.place.pages.toString() +
                "\n" +
                "Tahun Terbit       : " +
                widget.place.year.toString() +
                "\n" +
                "Status               : " +
                (widget.place.isAvailable ? "Tersedia" : "Tidak Tersedia") +
                "\n",
          ),
          ElevatedButton(
            child: Text('Pinjam Buku'),
            style: ElevatedButton.styleFrom(
              primary: Colors.lightBlue,
            ),
            onPressed: widget.place.isAvailable ? pinjamBuku : null,
          ),
        ],
      ),
    );
  }
}


//   void _toggleFavorite() {
//     setState(() {
//       if (_isFavorited) {
//         _isFavorited = false;
//         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//           content: Text('Favorite Dihapus'),
//           backgroundColor: Colors.red,
//         ));
//       } else {
//         _isFavorited = true;
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(
//               content: Text('Favorite ditambahkan'),
//               backgroundColor: Colors.green),
//         );
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Tourism Places"),
//         actions: <Widget>[
//           IconButton(
//               onPressed: _toggleFavorite,
//               icon: Icon(
//                 _isFavorited ? Icons.favorite : Icons.favorite_border,
//                 color: Colors.red,
//               ))
//         ],
//       ),
//       body: GridView.count(
//         crossAxisCount: 2,
//         padding: EdgeInsets.all(16.0),
//         childAspectRatio: 0.8,
//         children: [
//           Container(
//             child: Column(
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height * 2 / 3,
//                   child: Center(
//                     child: FittedBox(
//                       fit: BoxFit.contain,
//                       child: Image.network(widget.place.imageUrls[0]),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 16.0),
//                 Text(
//                   "Place :",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18.0,
//                   ),
//                 ),
//                 SizedBox(height: 8.0),
//                 Text(
//                   widget.place.name,
//                   style: TextStyle(fontSize: 16.0),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Location :",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18.0,
//                   ),
//                 ),
//                 SizedBox(height: 8.0),
//                 Text(
//                   widget.place.location,
//                   style: TextStyle(fontSize: 16.0),
//                 ),
//                 SizedBox(height: 16.0),
//                 Text(
//                   "About :",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18.0,
//                   ),
//                 ),
//                 SizedBox(height: 8.0),
//                 Text(
//                   widget.place.description,
//                   style: TextStyle(fontSize: 16.0),
//                 ),
//                 SizedBox(height: 16.0),
//                 Text(
//                   "Open in Days :",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18.0,
//                   ),
//                 ),
//                 SizedBox(height: 8.0),
//                 Text(
//                   widget.place.openDays,
//                   style: TextStyle(fontSize: 16.0),
//                 ),
//                 SizedBox(height: 16.0),
//                 Text(
//                   "Open in Time :",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18.0,
//                   ),
//                 ),
//                 SizedBox(height: 8.0),
//                 Text(
//                   widget.place.openTime,
//                   style: TextStyle(fontSize: 16.0),
//                 ),
//                 SizedBox(height: 16.0),
//                 Text(
//                   "Price :",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18.0,
//                   ),
//                 ),
//                 SizedBox(height: 8.0),
//                 Text(
//                   widget.place.ticketPrice,
//                   style: TextStyle(fontSize: 16.0),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
