import "package:flutter/material.dart";

class ProfileTwo extends StatelessWidget {
  const ProfileTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Two"),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          child: Stack(
            alignment: const Alignment(0.6, 0.6),
            children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/profile_image2.jpg"),
              radius: 100,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black45,
              ),
              child: Text(
              'Mia B',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ],
          )
        )
      )
    );
  }
}