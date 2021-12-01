import 'package:flutter/material.dart';
import 'package:flutter_application_1/InfoItem.dart';
import 'package:flutter_application_1/datalist.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Image.asset("lib/assets/images/menu.png"),
              onPressed: () {},
            ),
            Container(
              width: 130,
              height: 130,
              child: IconButton(
                icon: Image.asset("lib/assets/images/fujifilm-banner.png"),
                onPressed: () {},
              ),
            ),
            IconButton(
              icon: Image.asset("lib/assets/images/bag.png"),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 30, right: 25, left: 25, bottom: 25),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade600,
                borderRadius: BorderRadius.circular(30)),
            child: TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.all(15),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.white)),
            ),
          ),
        ),
        Column(
          children: List.generate(datap.length, (index) {
            return Padding(
              padding: EdgeInsets.only(right: 25, left: 25, bottom: 25),
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          color: datap[index]['col'],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                                width: 380,
                                height: 170,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    alignment: Alignment.centerRight,
                                    image: AssetImage("lib/assets/images/" +
                                        datap[index]['img']),
                                  ),
                                ),
                                padding: EdgeInsets.only(
                                    top: 10, right: 10, left: 20, bottom: 19),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text(
                                      datap[0]['tag'],
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                      top: 10,
                                    )),
                                    Text(datap[index]['name'],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                      top: 10,
                                    )),
                                    Text("\$" + datap[index]['price'],
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                      top: 5,
                                    )),
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (_) => Infoitem()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            shape: StadiumBorder()),
                                        child: Text("Buy",
                                            style: TextStyle(
                                                color: datap[index]['col']))),
                                  ],
                                )),
                          ],
                        ))
                  ],
                ),
              ),
            );
          }),
        )
      ],
    );
  }
}
