import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                left: 190,
                top: 10,
                child: Container(
                  width: 150,
                  height: 150,
                  transform: Matrix4.rotationZ(0.8),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blueAccent, Colors.white]),
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(10, 10),
                        color: Colors.grey,
                        blurRadius: 6,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 150,
                left: 100,
                child: Container(
                  height: 100,
                  width: 100,
                  transform: Matrix4.rotationZ(0.8),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.redAccent, Colors.white]),
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(10, 10),
                        color: Colors.grey,
                        blurRadius: 6,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 150,
                right: -20,
                child: Container(
                  height: 100,
                  width: 100,
                  transform: Matrix4.rotationZ(0.8),
                  decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.lime, Colors.white]),
                    color: Colors.green,
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(10, 10),
                        color: Colors.grey,
                        blurRadius: 6,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 280,
                left: 90,
                child: Text(
                  "WELCOME",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
              Positioned(
                bottom: 170,
                left: 12,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 100,
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Username",
                        hintText: "Enter Your Name",
                        suffixIcon: Icon(Icons.verified),
                        prefixText: "Mr/Mrs. ",
                        helperText: "enter your username",
                      ),
                      maxLength: 20,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 70,
                left: 12,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 100,
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: false,
                        fillColor: Colors.white,
                        labelText: "Password",
                        hintText: "Enter Your Password",
                        helperText: "enter your password",
                      ),
                      maxLength: 8,
                      obscureText: true,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 40,
                left: 20,
                child: Container(
                  height: 50,
                  width: 320,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: WidgetStatePropertyAll(
                        BorderSide(
                            color: Colors.purple,
                            style: BorderStyle.solid,
                            width: 1.5),
                      ),
                    ),
                    onPressed: () {
                      print("clicked button");
                    },
                    child: Text("Sign Up"),
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Login Page"),
          centerTitle: true,
          leading: Icon(Icons.home),
          actions: [Icon(Icons.search), Icon(Icons.more_vert_outlined)],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
              bottom: Radius.circular(20),
            ),
          ),
          elevation: 20,
        ),
      ),
    );
  }
}
