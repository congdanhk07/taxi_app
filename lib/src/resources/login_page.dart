import 'package:flutter/material.dart';
import 'package:taxi_app/src/resources/register_page.dart';
import 'package:flutter/gestures.dart';
import 'package:taxi_app/src/resources/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {


  @override
  void onSignInClicked(){
    setState((){

    });
  }

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          constraints: const BoxConstraints.expand(),
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 140,
                ),
                Image.asset('ic_car_green.png'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 6),
                  child: Text(
                    "Welcome back!",
                    style: TextStyle(fontSize: 22, color: Color(0xff333333)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 80),
                  child: Text(
                    "Login to continue using iCar",
                    style: TextStyle(fontSize: 16, color: Color(0xff606470)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 125, 0, 20),
                  child: TextField(
                    // controller: _emailController,
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    decoration: InputDecoration(
                        labelText: "Email",
                        prefixIcon: Container(
                            width: 50, child: Image.asset("ic_mail.png")),
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color(0xffCED0D2), width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(6)))),
                  ),
                ),
                TextField(
                  // controller: _passController,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Container(
                          width: 50, child: Image.asset("ic_phone.png")),
                      border: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xffCED0D2), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(6)))),
                ),
                Container(
                  constraints: BoxConstraints.loose(Size(double.infinity, 30)),
                  alignment: AlignmentDirectional.centerEnd,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(fontSize: 16, color: Color(0xff606470)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 40),
                  child: SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: RaisedButton(
                      onPressed: (){
                        // Route route =MaterialPageRoute(builder: (context) => HomePage());
                        // Navigator.push(context , route);
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => HomePage()));
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      color: Color(0xff3277D8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: RichText(
                    text: TextSpan(
                        text: "New user? ",
                        style: TextStyle(color: Color(0xff606470), fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => RegisterPage()));
                                },
                              text: "Sign up for a new account",
                              style: TextStyle(
                                  color: Color(0xff3277D8), fontSize: 16))
                        ]),
                  ),
                )
                // const Padding(
                //   padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                //   child: TextField(
                //     style: TextStyle(fontSize:18, color: Colors.black),
                //     // controller: _userController,
                //     decoration: InputDecoration(
                //         labelText: "Username",
                //         // errorText: _userInvalid ? _userNameErr : null,
                //         labelStyle:
                //         TextStyle(color: Color(0xff888888), fontSize: 15)),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                //   child: Stack(
                //     alignment: AlignmentDirectional.centerEnd,
                //     children: <Widget>[
                //       TextField(
                //         style: TextStyle(fontSize:18, color: Colors.black),
                //         controller: _passController,
                //         obscureText: !_showPass,
                //         decoration: InputDecoration(
                //             labelText: "Password",
                //             errorText: _passInvalid ? _passErr : null,
                //             labelStyle:
                //             TextStyle(color: Color(0xff888888), fontSize: 15)),
                //       ),
                //       GestureDetector(
                //         onTap: onToggleShowPass,
                //         child:  Text(
                //             _showPass ? "HIDE" :"SHOW",
                //             style: TextStyle(color: Colors.blue ,fontSize: 15)),
                //       ),
                //     ],
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                //   child:   SizedBox(
                //     width: double.infinity,
                //     height: 50,
                //     child: RaisedButton(
                //       color: Colors.blue,
                //       shape: const RoundedRectangleBorder(
                //           borderRadius: BorderRadius.all(Radius.circular(8))),
                //       onPressed: onSignInClicked,
                //       child: const Text("Sign in",
                //         style: TextStyle(color : Colors.white, fontSize: 16),
                //       ),
                //     ),
                //   ),
                // ),
                // Container(
                //   height: 130,
                //   width: double.infinity,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: const <Widget>[
                //       Text(
                //         "New user sign up",
                //         style: TextStyle(fontSize: 15, color: Color(0xff888888)),
                //       ),
                //       Text(
                //         "Forgot password?",
                //         style: TextStyle(fontSize: 15, color: Colors.blue),
                //       )
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}