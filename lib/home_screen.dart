import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("profile pic"),
      ),
      body: Center(
        child: Stack(
          children: [
            CircleAvatar(
              minRadius: 50,
              maxRadius: 100,
              backgroundImage: NetworkImage(
                  "https://randomuser.me/api/portraits/men/14.jpg"),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black12,
                height: 70,
                child: Icon(Icons.camera),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
