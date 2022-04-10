import 'package:flutter/material.dart';
import 'profile2.dart';

class ProfileOne extends StatelessWidget {
  // const ProfileOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My profie app"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/87634885?v=4"),
              ),
              accountEmail: Text('bisratwalle3@gmail.com'),
              accountName: Text(
                'Bisrat Walle - Developer',
                style: TextStyle(fontSize: 24.0),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle_rounded),
              title: const Text(
                'Another account screen',
                style: TextStyle(fontSize: 24.0),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) => ProfileTwo()),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.change_circle,
          semanticLabel: "Change Profile",
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ProfileTwo();
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
                child: Image.asset(
                  "assets/profile_image1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.black12,
                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 32,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.mode_edit,
                          color: Colors.white,
                          size: 32,
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 32,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    height: 50,
                    color: Colors.black12,
                    child: FittedBox(
                      child: Text(
                        "Ali Connors",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
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
