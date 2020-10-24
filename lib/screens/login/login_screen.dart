import 'package:flutter/material.dart';
import 'package:tab_signup_login/screens/vehicle_categories/vehicle_category_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
            children: <Widget> [
              Stack(
                children: <Widget>[
                  Container(
                    height: 300.0,
                    child: Image.asset(
                      'assets/download.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 200.0),
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    height: 323.0,
                    child: Card(
                      // color: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: DefaultTabController(
                          length: 2,
                          child: Column(
                            children: <Widget>[
                              Container(
                                constraints: BoxConstraints.expand(height: 50),
                                child: TabBar(tabs: [
                                  Tab(child: Text(
                                      'Sign In',
                                      style: TextStyle(color: Colors.black))),
                                  Tab(child: Text(
                                      'Sign Up',
                                      style: TextStyle(color: Colors.black))),
                                ]),
                              ),
                              Expanded(
                                child: Container(
                                  child: TabBarView(children: [
                                    Column(
                                      children: <Widget>[
                                        SizedBox(
                                          height: 15.0,
                                        ),
                                        TextField(
                                          style: TextStyle(
                                            fontSize: 17.0,
                                          ),
                                          decoration: InputDecoration(
                                            hintText: 'name@example.com',
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        TextFormField(
                                          style: TextStyle(
                                            fontSize: 17.0,
                                          ),
                                          decoration: InputDecoration(
                                            hintText: 'Mobile Number',
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            MaterialButton(
                                              child: Text("Sign In"),
                                              color: Colors.amber,
                                              textColor: Colors.white,
                                              minWidth: 260.0,
                                              padding: EdgeInsets.only(
                                                  left: 38, right: 38, top: 15, bottom: 15),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(5)),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => VehicleCategoryScreen()),
                                                );
                                              },
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        SizedBox(
                                          height: 15.0,
                                        ),
                                        TextField(
                                          style: TextStyle(
                                            fontSize: 17.0,
                                          ),
                                          decoration: InputDecoration(
                                            hintText: 'name@example.com',
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        TextFormField(
                                          style: TextStyle(
                                            fontSize: 17.0,
                                          ),
                                          decoration: InputDecoration(
                                            hintText: 'Mobile Number',
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            MaterialButton(
                                              child: Text("Sign Up"),
                                              color: Colors.amber,
                                              textColor: Colors.white,
                                              minWidth: 260.0,
                                              padding: EdgeInsets.only(
                                                  left: 38, right: 38, top: 15, bottom: 15),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(5)),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => VehicleCategoryScreen()),
                                                );
                                              },
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ]),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 140.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text('By clicking start, you agree to our Terms and Conditions',
                    style: TextStyle(fontWeight: FontWeight.w700),),
                ),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent)
                ),
              ),
            ]
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}