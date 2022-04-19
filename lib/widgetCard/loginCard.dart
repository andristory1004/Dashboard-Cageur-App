import 'package:flutter/material.dart';

class loginCard extends StatelessWidget {
  const loginCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
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
                  ),
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
      ])  
    );
  }
}