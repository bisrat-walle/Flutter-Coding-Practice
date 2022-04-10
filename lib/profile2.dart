import "package:flutter/material.dart";

class ProfileTwo extends StatelessWidget {
  // const ProfileTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Two"),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Stack(
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/profile_image2.jpg"),
                  radius: 100,
                ),
              ),
              Positioned(
                right: 35,
                bottom: 30,
                child: Container(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
