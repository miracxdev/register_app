import 'package:flutter/material.dart';
import 'package:register_app/screens/second_screen/view/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/bg.png",
              fit: BoxFit.cover,
            ),
          ),
          const Center(
            child: Text(
              "Herbalova",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Playfair Display',
                  fontSize: 25),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 75,
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                   Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => SecondScreen())));
                },
                child: Text(
                  "Sign to your account",
                  style: TextStyle(color: Colors.white, fontFamily: 'Raleway'),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
