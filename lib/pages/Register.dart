import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../helper/trianglepainter.dart';
import '../util/Api.dart';
import '../util/Constant.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formkey = GlobalKey<FormState>();
  final _usernamecontroller = TextEditingController();
  var _nameerror = "";
  final _emailcontroller = TextEditingController();
  var _emailerror = "";
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
                        "Register",
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
                              controller: _usernamecontroller,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  errorMessage.add("Name can be empty");
                                  return "Name cann't be empty";
                                }
                                return null;
                              },
                              onChanged: (value) {
                                if (value.length > 1 && value.length < 6) {
                                  setState(() {
                                    _nameerror = "Name cannote be less than 6";
                                  });
                                } else {
                                  setState(() {
                                    _nameerror = "";
                                  });
                                }
                              },
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[a-zA-Z]'))
                              ],
                              decoration: InputDecoration(
                                  labelText: "User Name",
                                  prefix: const Icon(Icons.person),
                                  errorText: _nameerror,
                                  errorBorder: const OutlineInputBorder(),
                                  enabledBorder: const OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              onChanged: (value) {
                                if (value.length < 15) {
                                  setState(() {
                                    _emailerror =
                                        "Email cannot be less than 15";
                                  });
                                } else {
                                  setState(() {
                                    _emailerror = "";
                                  });
                                }
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  errorMessage.add("email cannot be empty");
                                  return "Email cannot be empty";
                                }
                                return null;
                              },
                              controller: _emailcontroller,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  labelText: "Email",
                                  prefix: const Icon(Icons.email),
                                  errorText: _emailerror,
                                  enabledBorder: const OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
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
                                          var name = _usernamecontroller.text;
                                          var email = _emailcontroller.text;
                                          var phone = _phonecontroller.text;
                                          var password =
                                              _passwordcontroller.text;
                                          Api.userRegister(
                                              name, email, phone, password);
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
