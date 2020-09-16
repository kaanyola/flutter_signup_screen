import 'package:flutter/material.dart';

class SingUpScreen extends StatefulWidget {
  @override
  _SingUpScreenState createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
            child: Text("Sign Up", style: TextStyle(color: Colors.grey))),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: height * 0.88,
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: height / 20,
              ),
              Text("Register Account",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: height / 30,
              ),
              Text(
                "Complete your details or continue\n with social media",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[600]),
              ),
              SizedBox(
                height: height / 20,
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: height / 15,
                  width: width / 1.2,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                        suffixIcon: Icon(Icons.message),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "Enter your email",
                        labelText: "Email"),
                  )),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: height / 15,
                  width: width / 1.2,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                        suffixIcon: Icon(Icons.lock),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "Enter your password",
                        labelText: "Password"),
                  )),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: height / 15,
                  width: width / 1.2,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                        suffixIcon: Icon(Icons.lock),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "Re-enter your password",
                        labelText: "Confirm Password"),
                  )),
              SizedBox(
                height: height / 20,
              ),
              Container(
                height: height / 15,
                width: width / 1.2,
                decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(212)),
                child: MaterialButton(
                  onPressed: () {},
                  child: Center(
                      child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildSocialMediaIcon(Icon(Icons.ac_unit)),
                  buildSocialMediaIcon(Icon(Icons.accessible)),
                  buildSocialMediaIcon(Icon(Icons.airplanemode_inactive)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "By continuing your confirm that you agree\n with our Term and Condition",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[600]),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSocialMediaIcon(Icon icon) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: Colors.grey[350], borderRadius: BorderRadius.circular(50)),
        child: icon,
      ),
    );
  }
}
