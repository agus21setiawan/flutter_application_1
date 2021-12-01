import 'package:flutter/material.dart';

class Infoitem extends StatefulWidget {
  @override
  _InfoitemState createState() => _InfoitemState();
}

class _InfoitemState extends State<Infoitem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Image.asset("lib/assets/images/left.png"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Container(
              width: 150,
              height: 150,
              child: IconButton(
                icon: Image.asset("lib/assets/images/fujifilm-banner.png"),
                onPressed: () {},
              ),
            ),
            IconButton(
              icon: Image.asset("lib/assets/images/titik.png"),
              onPressed: () {},
            ),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
    );
  }
}
