import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodmoneky/helper/trianglepainter.dart';

import '../util/Api.dart';
import '../util/Constant.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  final _formkey = GlobalKey<FormState>();
  final _usernamecontroller = TextEditingController();
  final _nameerror = "";
  final _emailcontroller = TextEditingController();
  final _emailerror = "";
  final _phonecontroller = TextEditingController();
  var _phoneerror = "";
  final _passwordcontroller = TextEditingController();
  var _passworderror = "";
  var errorMessage = [];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            CustomPaint(
              painter: TrianglePainter(size),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                          height: 120,
                          child: Image.asset("assets/images/FoodMonkey.png")),
                      const Text(
                        "Login",
                        style: TextStyle(fontSize: 35, color: normal),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _phonecontroller,
                              keyboardType: TextInputType.phone,
                              onChanged: (value) {
                                if (value.length < 7 || value.length > 13) {
                                  setState(() {
                                    _phoneerror =
                                        "phone number cannot be less than 15";
                                  });
                                } else {
                                  setState(() {
                                    _phoneerror = "";
                                  });
                                }
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  errorMessage
                                      .add("phone number cannot be empty");
                                  return "phone number cannot be empty";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  labelText: "Phone",
                                  errorText: _phoneerror,
                                  prefix: const Icon(Icons.phone),
                                  enabledBorder: const OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _passwordcontroller,
                              obscureText: true,
                              onChanged: (value) {
                                if (value.length < 8) {
                                  setState(() {
                                    _passworderror =
                                        "password cannot be less than 15";
                                  });
                                } else {
                                  setState(() {
                                    _passworderror = "";
                                  });
                                }
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  errorMessage.add("password cannot be empty");
                                  return "password cannot be empty";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  labelText: "Password",
                                  errorText: _passworderror,
                                  prefix: const Icon(Icons.lock),
                                  enabledBorder: const OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  width: 150,
                                  child: TextButton(
                                      onPressed: () {
                                        var con =
                                            _formkey.currentState!.validate();
                                        if (con) {
                                          var phone = _phonecontroller.text;
                                          var password =
                                              _passwordcontroller.text;
                                          Api.userLogin(phone, password);
                                        } else {
                                          print(errorMessage);
                                        }
                                      },
                                      style: ButtonStyle(
                                          backgroundColor:
                                              WidgetStateProperty.all(
                                                  secondary)),
                                      child: const Row(
                                        children: [
                                          Icon(
                                            Icons.person,
                                            color: primary,
                                          ),
                                          Text(
                                            "Register",
                                            style: TextStyle(
                                                fontSize: 20, color: primary),
                                          )
                                        ],
                                      )),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
