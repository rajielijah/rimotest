import 'package:flutter/material.dart';
import 'package:rimo/verify_otp.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final EmailField = TextFormField(
      autofocus: false,
      maxLines: 1,
      minLines: 1,
      decoration: InputDecoration(
        hintText: "  Email",
        contentPadding: new EdgeInsets.symmetric(vertical: 0, horizontal: 1.0),
        errorBorder:
            OutlineInputBorder(borderSide: new BorderSide(color: Colors.black)),
        enabledBorder:
            OutlineInputBorder(borderSide: new BorderSide(color: Colors.black)),
        focusedBorder: OutlineInputBorder(
            borderSide:
                new BorderSide(color: Colors.black, style: BorderStyle.solid)),
      ),
    );

    final firstNameField = TextFormField(
      autofocus: false,
      maxLines: 1,
      minLines: 1,
      decoration: InputDecoration(
        hintText: "  First Name",
        contentPadding: new EdgeInsets.symmetric(vertical: 0, horizontal: 1.0),
        enabledBorder:
            OutlineInputBorder(borderSide: new BorderSide(color: Colors.black)),
        focusedBorder: OutlineInputBorder(
            borderSide:
                new BorderSide(color: Colors.black, style: BorderStyle.solid)),
      ),
    );

    final lastNameField = TextFormField(
      autofocus: false,
      maxLines: 1,
      minLines: 1,
      decoration: InputDecoration(
        hintText: "  Last Name",
        contentPadding: new EdgeInsets.symmetric(vertical: 0, horizontal: 1.0),
        enabledBorder:
            OutlineInputBorder(borderSide: new BorderSide(color: Colors.black)),
        focusedBorder: OutlineInputBorder(
            borderSide:
                new BorderSide(color: Colors.black, style: BorderStyle.solid)),
      ),
    );
    final phoneField = TextFormField(
      autofocus: false,
      obscureText: true,
      maxLines: 1,
      minLines: 1,
      decoration: InputDecoration(
        hintText: "  Phone Number",
        contentPadding: new EdgeInsets.symmetric(vertical: 0, horizontal: 1.0),
        errorBorder:
            OutlineInputBorder(borderSide: new BorderSide(color: Colors.black)),
        enabledBorder:
            OutlineInputBorder(borderSide: new BorderSide(color: Colors.black)),
        focusedBorder: OutlineInputBorder(
            borderSide:
                new BorderSide(color: Colors.black, style: BorderStyle.solid)),
      ),
    );
    final officeCodeField = TextFormField(
      autofocus: false,
      obscureText: true,
      maxLines: 1,
      minLines: 1,
      decoration: InputDecoration(
        hintText: "  Office Code",
        contentPadding: new EdgeInsets.symmetric(vertical: 0, horizontal: 1.0),
        errorBorder:
            OutlineInputBorder(borderSide: new BorderSide(color: Colors.black)),
        enabledBorder:
            OutlineInputBorder(borderSide: new BorderSide(color: Colors.black)),
        focusedBorder: OutlineInputBorder(
            borderSide:
                new BorderSide(color: Colors.black, style: BorderStyle.solid)),
      ),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text(
                "Let's get started, this is your setup \nto access your resident",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              firstNameField,
              SizedBox(
                height: 20,
              ),
              lastNameField,
              SizedBox(
                height: 20,
              ),
              EmailField,
              SizedBox(
                height: 20,
              ),
              phoneField,
              SizedBox(
                height: 20,
              ),
              officeCodeField,
              SizedBox(
                height: 40,
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => VerifyOTP()));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
