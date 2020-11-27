import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:travel_app/models/LocationItemModel.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        borderRadius: BorderRadius.circular(40),
        parallaxEnabled: true,
        panel: Container(
          margin: EdgeInsets.only(
            top: 15,
            left: 40,
            right: 40,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10,),
                Chip(
                  label: Text(
                    "Buleleng",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  backgroundColor: Color(0xFF3640ff),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Bukit Kursi",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontFamily: "poppinsblack",
                    height: 1,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Pemuteran",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF3640ff),
                      fontFamily: "poppinsbold"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Desa Pemuteran di Kabupaten Buleleng terkenal dengan pantainya yang bernama Pantai Pemuteran. Namun, Anda juga bisa menjumpai pura yang keramat dan banyak dikunjungi wisatawan di desa ini. Nama pura tersebut adalah Pura Batu Kursi Pemuteran."
                      "Pemandangan indah yang ada di puncak Bukit Batu Kursi membuat para wisatawan kerap memilih bukit ini sebagai lokasi trekking. Untuk melakukan aktivitas trekking di Bukit Batu Kursi juga cukup nyaman. Apalagi, di sini telah ada jalur trekking berupa tangga permanen.",
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                "https://images.pexels.com/photos/1657984/pexels-photo-1657984.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
