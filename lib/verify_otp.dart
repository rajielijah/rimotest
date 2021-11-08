import 'package:flutter/material.dart';
import 'package:rimo/dahsboard.dart';

class VerifyOTP extends StatelessWidget {
  const VerifyOTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 50,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Verify your number, an OTP has been sent to \n                        081*******",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Text("OTP"),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 53,
                  width: 49,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(6)),
                  child: TextField(
                    cursorColor: Colors.white,
                  ),
                ),
                Container(
                  height: 53,
                  width: 49,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(6)),
                  child: TextField(
                    cursorColor: Colors.white,
                  ),
                ),
                Container(
                  height: 53,
                  width: 49,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(6)),
                  child: TextField(
                    cursorColor: Colors.white,
                  ),
                ),
                Container(
                  height: 53,
                  width: 49,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(6)),
                  child: Center(
                    child: TextField(
                      cursorColor: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.center,
              child: FlatButton(
                minWidth: 200,
                height: 45,
                color: Colors.blue[900],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DashBoardScreen()));
                },
                child: Text(
                  "Verify",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text("If you did not receive the code after 3 minutes"),
            SizedBox(
              height: 20,
            ),
            Text(
              "Please tap Resend code",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    ));
  }
}
