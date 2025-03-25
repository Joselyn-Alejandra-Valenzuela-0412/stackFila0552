import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Stack en fila -joselyn alejandra valenzuela-',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80, // Altura fija para el Stack
                width: 250, // Ancho suficiente para los cuadros superpuestos
                child: Stack(
                  children: [
                    _buildBox(Icons.home, Colors.blue, 0),
                    _buildBox(Icons.star, Colors.green,
                        40), // Superposición: 40px desde la izquierda
                    _buildBox(Icons.favorite, Colors.red, 80),
                    _buildBox(Icons.access_alarm, Colors.orange, 120),
                    _buildBox(Icons.lightbulb, Colors.purple, 160),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBox(IconData icon, Color color, double left) {
    return Positioned(
      left: left, // Controla la posición horizontal
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 4,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Icon(icon, color: Colors.white, size: 30),
      ),
    );
  }
}
