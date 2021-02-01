import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("profile pic"),
      ),
      body: Center(
        child: buildAvatar2(),
      ),
    );
  }

  Widget buildAvatar() {
    var profilePicture = "https://randomuser.me/api/portraits/men/14.jpg";
    profilePicture = "";
    return CircleAvatar(
      radius: 55,
      backgroundColor: Color(0xffFDCF09),
      child: profilePicture != ""
          ? ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                profilePicture,
                fit: BoxFit.cover,
              ),
            )
          : Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(50)),
              width: 100,
              height: 100,
              child: Icon(
                Icons.camera_alt,
                color: Colors.grey[800],
              ),
            ),
    );
  }

  Widget buildAvatar2() {
    return Stack(
      children: [
        CircleAvatar(
          minRadius: 50,
          maxRadius: 100,
          backgroundImage:
              NetworkImage("https://randomuser.me/api/portraits/men/14.jpg"),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: ClipOval(
            clipper: MyClip(),
            clipBehavior: Clip.hardEdge,
            child: Container(
              color: Colors.green,
              height: 100,
              width: 200,
              child: Icon(Icons.camera_alt),
            ),
          ),
        )
      ],
    );
  }
}

class MyClip extends CustomClipper<Rect> {
  Rect getClip(Size size) {
    // return Rect.fromLTWH(0, 0, 200, 200);
    return Rect.fromCircle(
      center: Offset(100, 0),
      radius: 100,
    );
  }

  bool shouldReclip(oldClipper) {
    return true;
  }
}
