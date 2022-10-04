import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
                child: Image.asset(
              "assets/images/bg.png",
              fit: BoxFit.cover,
            )),
            Center(
              child: Text(
                "Merhaba",
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Raleway', fontSize: 25),
              ),
            ),
            Container(
              child: TextButton(onPressed: () {}, child: Text("Kayıt olun")),
            )
          ],
        ),
      ),
    );
  }
}
