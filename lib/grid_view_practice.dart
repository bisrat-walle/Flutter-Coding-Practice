import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Demo"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
        ),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  "assets/profile_image1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0,
				left: 0,
				right: 0,
                height: 50,
                child: Container(
                  color: Colors.black45,
                  height: 50,
				          padding: EdgeInsets.only(left:10, right: 10),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
						            crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ethiopia",
							              textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "Addis Ababa, April 11, 2022",
							textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
