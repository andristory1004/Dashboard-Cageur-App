
import 'package:cageur_dashboard/widgetCard/topTitle.dart';
import 'package:flutter/material.dart';

class notif extends StatefulWidget {
  const notif({Key? key}) : super(key: key);

  @override
  State<notif> createState() => _notifState();
}

class _notifState extends State<notif> {
  List<String> labels = ['Any notif', 'All Notif'];
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          toptitle(
              imageUrl: "asset/images/dashboard/ic_notif.png",
              title: "Notification"),
          SizedBox(),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                Text(labels [counter])
                // notifCard(
                //     title: "New Apoitment",
                //     deskripsi:
                //         "Demo user booked an appointment on 03-09-2022 at 10:40",
                //     time: "2022-03-09 02:22:39"),
                // notifCard(
                //     title: "New Apoitment",
                //     deskripsi:
                //         "Demo user booked an appointment on 03-09-2022 at 10:40",
                //     time: "2022-03-09 02:22:39"),
                // notifCard(
                //     title: "New Apoitment",
                //     deskripsi:
                //         "Demo user booked an appointment on 03-09-2022 at 10:40",
                //     time: "2022-03-09 02:22:39"),
                // notifCard(
                //     title: "New Apoitment",
                //     deskripsi:
                //         "Demo user booked an appointment on 03-09-2022 at 10:40",
                //     time: "2022-03-09 02:22:39"),
                // notifCard(
                //     title: "New Apoitment",
                //     deskripsi:
                //         "Demo user booked an appointment on 03-09-2022 at 10:40",
                //     time: "2022-03-09 02:22:39")
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
