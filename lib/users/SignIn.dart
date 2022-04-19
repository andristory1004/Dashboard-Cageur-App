import 'package:cageur_dashboard/style/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    Widget section1() {
      return Container(
        child: Column(
          children: <Widget>[
            Image(
                image: AssetImage('images/logoCageur.png'),
                width: 65,
                height: 65),
            Text(
              "Admin Cageur App",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text(
              "Please enter your account here..!",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey),
            )
          ],
        ),
      );
    }


    Widget section3() {
      return Container(
          child: Column(children: <Widget>[
        Container(
          width: 327,
          height: 50,
          child: TextFormField(
              autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: "Email or phone Number",
                  prefixIcon: Icon(
                    Icons.mail,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32)))),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 327,
          height: 50,
          child: TextFormField(
              autofocus: true,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32)
                  )
            ),
              
          ),
        ),
        Container(
            width: 327,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password..?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
              ],
            ))
      ]));
    }

    Widget section4() {
      return Container(
        child: Column(
          children: <Widget>[
            Container(
              width: 327,
              height: 50,
              decoration: BoxDecoration(
                  color: green, borderRadius: BorderRadius.circular(32)),
              child: TextButton(
                  onPressed: () {
                    Get.to('');
                  },
                  child: Text(
                    "Log In",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: white),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Or continue with",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 327,
              height: 50,
              decoration: BoxDecoration(
                  color: red, borderRadius: BorderRadius.circular(32)),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Google",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: white),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Klik Daftar untuk menjadi mitra kita!",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    )),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "SignUp");
                  },
                  child: Text("Daftar",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      )),
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              section1(),
              SizedBox(
                height: 20,
              ),
              section3(),
              SizedBox(
                height: 10,
              ),
              section4()
            ]),
      ),
    );
  }
}
