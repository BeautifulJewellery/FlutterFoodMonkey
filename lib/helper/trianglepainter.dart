import 'package:flutter/material.dart';

import '../util/Constant.dart';

class TrianglePainter extends CustomPainter {
  var msize;
  TrianglePainter(this.msize);
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = accent;

    var uppath = Path();
    uppath.moveTo(msize.width / 3, 0);
    uppath.lineTo(msize.width, 0);
    uppath.lineTo(msize.width, msize.height / 3);
    uppath.close();
    canvas.drawPath(uppath, paint);

    var downpath = Path();
    downpath.moveTo(0, (msize.height / 3) * 2);
    downpath.lineTo(0, msize.height);
    downpath.lineTo((msize.width / 5) * 3, msize.height);
    downpath.close();
    canvas.drawPath(downpath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
