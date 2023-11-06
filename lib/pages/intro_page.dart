import 'package:flutter/material.dart';
import 'package:grocery_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[50],
        body: SafeArea(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(35),
            child: Image.asset('lib/images/basketimg1.png'),
          ),
          const Padding(
            padding: EdgeInsets.all(28),
            child: Text(
              "We deliver groceries at your doorstep!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            'Fresh items everyday',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          ),
          const Spacer(),
          GestureDetector(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const HomePage();
                    },
                  ),
                );
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          15.0), // Adjust the radius as needed
                    ),
                  ),
                  backgroundColor:
                      const MaterialStatePropertyAll(Colors.lightGreen),
                  padding: const MaterialStatePropertyAll(
                      EdgeInsetsDirectional.symmetric(
                          horizontal: 35, vertical: 20))),
              child: const Text(
                "Get Started",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 72, 4), fontSize: 16),
              ),
            ),
          ),
          const Spacer(),
        ])));
  }
}
