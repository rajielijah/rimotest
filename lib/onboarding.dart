import 'package:flutter/material.dart';
import 'package:rimo/sign_up.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Where would you like to go?",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 111,
                padding: EdgeInsets.only(top: 20),
                width: width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(5)),
                child: ListTile(
                  leading: Image.asset("assets/images/Vector.png"),
                  title: Text(
                    "Corporate",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("""This is for your office space,
just put in the office code and
get in easily."""),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                child: Container(
                  height: 111,
                  padding: EdgeInsets.only(top: 20),
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.grey[700],
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                    leading: Image.asset("assets/images/Vector1.png"),
                    title: Text(
                      "Residence",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        """This is for your home just put in the \nestate’s code and get in easily."""),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
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
