import 'package:flutter/material.dart';
import 'profile2.dart';

class ProfileOne extends StatelessWidget {
  const ProfileOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My profie app"),
        ),
        floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push( context, MaterialPageRoute(
                builder: (context) {
              return  ProfileTwo();
          },
          ),
          );
          },
        ),
        body: Center(
          child: Container(
            width: 400,
            height: 400,
            // decoration: BoxDecoration
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  child: Image.asset("assets/profile_image1.jpg", fit: BoxFit.cover,),
                  
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios),
                      Row(
                        children: [
                          Icon(Icons.mode_edit),
                          Icon(Icons.more_vert),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left:0,
                  right:0,
                  child: Center(
                    child: Container(
                    height: 50,
                    color: Colors.blue,
                    child: FittedBox(
                      child: Text("Ali Connors", textAlign: TextAlign.center, 
                      style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    ),
                  )
                  ),
                ) 
              ],
            ),
          ),
        ),
      
    );
  }
}

