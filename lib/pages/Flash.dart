import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../helper/trianglepainter.dart';
import '../util/Constant.dart';
import '../util/api.dart';

class Flash extends StatefulWidget {
  const Flash({super.key});

  @override
  State<Flash> createState() => _FlashState();
  
}

class _FlashState extends State<Flash> {
  loadinitialData() async {
    var catbol = await Api.getAllCall();
    var subbol = await Api.getAllSub();
    var tabbol = await Api.getAllTabs();
    if (catbol && subbol && tabbol) {
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      const AlertDialog(title: Text("Error"), content: Text("Data loading Error"));
    }
  }

  @override
  void initState(){
    super.initState();
    loadinitialData();

  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        CustomPaint(
          painter: TrianglePainter(size),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 150, left: 30),
          child: Text(
            "Food Monkey",
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: normal),
          ),
        ),
        Center(child: Image.asset("assets/images/FoodMonkey.png")),
        const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: CircularProgressIndicator(
                backgroundColor: accent,
                valueColor: AlwaysStoppedAnimation(normal),
              ),
            ),
            SizedBox(
              height: 150,
            )
          ],
        ),
      ],
    ));
  }
}
