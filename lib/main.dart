import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Qorbobo(),
    );
  }
}

class Qorbobo extends StatelessWidget {
  const Qorbobo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Qorbobo'),
      ),
      body: CustomPaint(
        painter: MyPainter(),
        child: Container(),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    canvas.drawCircle(Offset(size.width / 2, size.height * 3.7 / 10), 50,
        Paint()..color = Colors.white);
    canvas.drawCircle(Offset(size.width / 2, size.height * 5.5 / 10), 80,
        Paint()..color = Colors.white);
    canvas.drawCircle(Offset(size.width / 2, size.height * 8 / 10), 100,
        Paint()..color = Colors.white);
    paint.strokeWidth = 2;
    // body
    canvas.drawCircle(Offset(size.width * 5 / 10, size.height * 4.5 / 9), 4,
        Paint()..color = Colors.black);
    canvas.drawCircle(Offset(size.width * 5 / 10, size.height * 5.3 / 9), 4,
        Paint()..color = Colors.black);
    canvas.drawCircle(Offset(size.width * 5 / 10, size.height * 7 / 10), 4,
        Paint()..color = Colors.black);
    canvas.drawCircle(Offset(size.width * 5 / 10, size.height * 7.7/ 10), 4,
        Paint()..color = Colors.black);
    canvas.drawCircle(Offset(size.width * 5 / 10, size.height * 8.4 / 10), 4,
        Paint()..color = Colors.black);

    canvas.drawCircle(Offset(size.width * 5.4 / 10, size.height * 3.4 / 10), 5,
        Paint()..color = Colors.blue);
    canvas.drawCircle(Offset(size.width * 4.6 / 10, size.height * 3.4/ 10), 5,
        Paint()..color = Colors.blue);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}