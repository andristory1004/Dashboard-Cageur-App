
import 'package:flutter/material.dart';

class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  bool isSwitched = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Image(image: AssetImage('asset/images/Ellipse.png')),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 20, left: 1, top: 22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BackButton(
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                          Column(
                            children: <Widget>[
                              InkWell(
                                  child: Icon(Icons.logout),
                                  onTap: () {
                                    Navigator.pushNamed(context, "SignIn");
                                  }),
                              Text('Logout')
                            ],
                            //  Icon(Icons.logout),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                          child: Column(children: <Widget>[
                        Image(
                          image: AssetImage(
                              "asset/images/dashboard/ic_setting.png"),
                          width: 75,
                          height: 75,
                        ),
                        Text("Galeri",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700))
                      ])),
                    ),
                  ],
                )
              ],
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                        //                   <--- left side
                        color: Colors.black,
                        width: 1.0,
                      ),
                    )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Online  booking',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-Bold.ttf',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  'Turn off to stop online booking',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-Light.ttf',
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              child: Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                    print(isSwitched);
                                  });
                                },
                                activeTrackColor: Color(0xff1FCC79),
                                activeColor: Color(0xff1FCC79),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, right: 20, left: 20),
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                        //                   <--- left side
                        color: Colors.black,
                        width: 1.0,
                      ),
                    )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Online  booking',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-Mediumitalic.ttf',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  'Turn off to stop online booking',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-Light.ttf',
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              child: Switch(
                                value: isSwitched2,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched2 = value;
                                    print(isSwitched2);
                                  });
                                },
                                activeTrackColor: Color(0xff1FCC79),
                                activeColor: Color(0xff1FCC79),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, right: 20, left: 20),
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                        //                   <--- left side
                        color: Colors.black,
                        width: 1.0,
                      ),
                    )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Online  booking',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-Mediumitalic.ttf',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  'Turn off to stop online booking',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-Light.ttf',
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              child: Switch(
                                value: isSwitched3,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched3 = value;
                                    print(isSwitched3);
                                  });
                                },
                                activeTrackColor: Color(0xff1FCC79),
                                activeColor: Color(0xff1FCC79),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 250),
                      child: Center(child: Text('App Version \n       1.0.0')))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
