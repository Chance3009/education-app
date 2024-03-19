import 'package:finance/Education/screens/education_home.dart';
import 'package:flutter/material.dart';
import 'package:finance/SocialMedia/InterestsPage.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((context) => InterestsPage())),
                  );
                },
                child: Text('Social Media'),
              ),
              SizedBox(height: 30), // Adjust spacing between buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((context) => HomePageWidget())),
                  );
                },
                child: Text('Education'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
