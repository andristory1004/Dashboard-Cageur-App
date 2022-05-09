import 'package:cageur_dashboard/UI/widgetCard/topTitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:dropdown_plus/dropdown_plus.dart';

class departement extends StatelessWidget {
  bool _obscureText = true;
  //const departement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listDepartment = [
      {'linkUrl': '', 'imageUrl': 'images/d_umum.png', 'name': 'Umum'},
      {'linkUrl': '', 'imageUrl': 'images/d_umum.png', 'name': 'Umum'},
      {'linkUrl': '', 'imageUrl': 'images/d_umum.png', 'name': 'Umum'},
      {'linkUrl': '', 'imageUrl': 'images/d_umum.png', 'name': 'Umum'},
      {'linkUrl': '', 'imageUrl': 'images/d_umum.png', 'name': 'Umum'},
      {'linkUrl': '', 'imageUrl': 'images/d_umum.png', 'name': 'Umum'},
      {'linkUrl': '', 'imageUrl': 'images/d_umum.png', 'name': 'Umum'},
    ];

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            toptitle(imageUrl: "images/ic_chat.png", title: 'Departement'),
            Expanded(
              // child: ListView(
              //   children: <Widget>[
              //     Column(
              //       children: <Widget>[
              //         Container(
              //             padding: EdgeInsets.all(5),
              //             child: Column(
              //               children: <Widget>[
              //                 Row(
              //                   mainAxisAlignment: MainAxisAlignment.center,
              //                   children: <Widget>[
              //                     DepOption(
              //                       imageUrl: "images/umum.png",
              //                       title: "Umum",
              //                       link: '',
              //                     ),
              //                     SizedBox(
              //                       width: 10,
              //                     ),
              //                     // DepOption(
              //                     //   imageUrl: "asset/images/departement/jantung.png",
              //                     //   title: "Jantung",
              //                     //   link: '',
              //                     // ),
              //                     // SizedBox(
              //                     //   width: 10,
              //                     // ),
              //                     // DepOption(
              //                     //   imageUrl: "asset/images/departement/urology.png",
              //                     //   title: "Urology",
              //                     //   link: '',
              //                     // ),
              //                   ],
              //                 ),
              //             //     SizedBox(height:10),
              //             //      Row(
              //             //       mainAxisAlignment: MainAxisAlignment.center,
              //             //       children: <Widget>[
              //             //         DepOption(
              //             //           imageUrl: "asset/images/departement/paru.png",
              //             //           title: "Paru-Paru",
              //             //           link: '',
              //             //         ),
              //             //         SizedBox(
              //             //           width: 10,
              //             //         ),
              //             //         DepOption(
              //             //           imageUrl: "asset/images/departement/jantung.png",
              //             //           title: "Jantung",
              //             //           link: '',
              //             //         ),
              //             //         SizedBox(
              //             //           width: 10,
              //             //         ),
              //             //         DepOption(
              //             //           imageUrl: "asset/images/departement/ortho.png",
              //             //           title: "Urology",
              //             //           link: '',
              //             //         ),
              //             //       ],
              //             //     ),
              //             //     SizedBox(height:10),
              //             //     Row(
              //             //       mainAxisAlignment: MainAxisAlignment.center,
              //             //       children: <Widget>[
              //             //         DepOption(
              //             //           imageUrl: "asset/images/departement/dalam.png",
              //             //           title: "Umum",
              //             //           link: '',
              //             //         ),
              //             //         SizedBox(
              //             //           width: 10,
              //             //         ),
              //             //         DepOption(
              //             //           imageUrl: "asset/images/departement/kejiwaan.png",
              //             //           title: "Jantung",
              //             //           link: '',
              //             //         ),
              //             //         SizedBox(
              //             //           width: 10,
              //             //         ),
              //             //         DepOption(
              //             //           imageUrl: "asset/images/departement/umum.png",
              //             //           title: "Urology",
              //             //           link: " ",
              //             //         ),
              //             //       ],
              //             //     ),
              //                ],
              //              )
              //           ),
              //       ],
              //     ),
              //   ],
              // ),

              child: GridView(
                padding: EdgeInsets.all(20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),
                children: listDepartment.map((data) {
                  return Card(
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed("${data['linkUrl']}");
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage("${data['imageUrl']}"),
                            width: 63,
                            height: 67,
                          ),
                          Text("${data['name']}"),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => _onAlertWithCustomContentPressed(context),
      //   child: Image(
      //     image: AssetImage("asset/images/departement/adddep.png"),
      //     width: 24,
      //     height: 24,
      //   ),
      //   backgroundColor: Color(0xff1FCC79),
      // ),
    );
  }

//   _onAlertWithCustomContentPressed(context) {
//     Alert(
//       context: context,
//       title: "Tambah Departement",
//       content: Container(
//         child: Column(
//           children: <Widget>[
//             Container(
//                 decoration: BoxDecoration(
//                     border: Border(
//                   bottom: BorderSide(
//                     //                   <--- left side
//                     color: Colors.black,
//                     width: 1.0,
//                   ),
//                 )),
//                 child: TextDropdownFormField(
//                   options: ["UMUM", "JANTUNG", "HATI", "PARI-PARU"],
//                   decoration: new InputDecoration(
//                       enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(20),
//                           borderSide: BorderSide(color: Color.fromARGB(255, 80, 89, 131))),
//                       focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(20),
//                           borderSide: BorderSide(color: Color(0xff1FCC79))),
//                       border: OutlineInputBorder(
//                           borderRadius: new BorderRadius.circular(20)),
//                       suffixIcon: Icon(Icons.arrow_drop_down),
//                       labelText: "Layanan"),
//                   dropdownHeight: 150,
//                 )),
//             SizedBox(height: 10),
//             Container(
//                 margin: EdgeInsets.only(top: 300),
//                 width: 230,
//                 height: 50,
//                 decoration: BoxDecoration(
//                   color: Color(0xff1FCC79),
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     TextButton(
//                         onPressed: () {
//                           Navigator.pushNamed(context, 'appoinment');
//                         },
//                         child: Text('SIMPAN',
//                             style: TextStyle(
//                                 color: Color(0xffFFFFFF),
//                                 fontSize: 17,
//                                 fontWeight: FontWeight.w700))),
//                   ],
//                 ))
//           ],
//         ),
//       ),
//       // buttons: [
//       //   DialogButton(
//       //     onPressed: () => Navigator.pop(context),
//       //     child: Text(
//       //       "LOGIN",
//       //       style: TextStyle(
//       //         color: Colors.white,
//       //         fontSize: 15,
//       //       ),
//       //     ),
//       //   )
//       // ]
//     ).show();
//   }

//   void setState(Null Function() param0) {}
// }
}
