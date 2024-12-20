import 'package:flutter/cupertino.dart';
import 'package:foodmoneky/util/Constant.dart';
import 'dart:math' as math;
class arcPainter extends CustomPainter {
  var msize;
  arcPainter(this.msize);
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = secondary;
    final rect = const Rect.fromLTRB(-600, 200, 400, 1500);
    final startangle = -degreeToRadian(100);
    final sweepangle = degreeToRadian(300);
    const useCenter = false;
    canvas.drawArc(rect, startangle, sweepangle, useCenter, paint);
    // TODO: implement paint
  }

degreeToRadian(degree){
return degree * (math.pi/180);
}
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
