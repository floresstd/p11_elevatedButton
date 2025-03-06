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
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Jesús Daniel Flores Rodríguez"),
              Text("22308051281186", style: TextStyle(fontSize: 20)),
            ],
          ),
          backgroundColor: Color(0xffff4444),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                  text: "Button 1",
                  color: Colors.amber,
                  textColor: Colors.red,
                  icon: Icons.star),
              SizedBox(height: 15),
              CustomButton(
                  text: "Button 2",
                  color: Colors.orange,
                  textColor: Colors.white,
                  icon: Icons.favorite),
              SizedBox(height: 15),
              CustomButton(
                  text: "Button 3",
                  color: Colors.white,
                  textColor: Colors.green,
                  borderColor: Colors.green,
                  icon: Icons.check_circle),
              SizedBox(height: 15),
              CustomButton(
                  text: "Button 4",
                  color: Colors.purple,
                  textColor: Colors.white),
              SizedBox(height: 15),
              CustomButton(
                  text: "Button 5",
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  borderColor: Colors.blue),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home, color: Colors.pink, size: 24),
                  SizedBox(width: 8),
                  Text("Home",
                      style: TextStyle(color: Colors.pink, fontSize: 16)),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Text Link",
                      style: TextStyle(color: Colors.blue, fontSize: 16)),
                  SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                    ),
                    child:
                        Text("Elevated Button", style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final Color? borderColor;
  final IconData? icon;

  const CustomButton({
    required this.text,
    required this.color,
    required this.textColor,
    this.borderColor,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: borderColor != null
            ? Border.all(color: borderColor!, width: 2)
            : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) Icon(icon, color: textColor, size: 20),
          if (icon != null) SizedBox(width: 6),
          Text(
            text,
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
