import 'package:flutter/material.dart';
import 'package:tvmedia/models/tv_model.dart';
import 'package:tvmedia/screen/normal_player_page.dart';

class Homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Homepagestate();
  }
}

class Homepagestate extends State<Homepage>
    with SingleTickerProviderStateMixin {
  int index = 0;
  TabController controller;


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _hideVideoFullscreen() {
    Navigator.maybePop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 4.0,
        backgroundColor: Colors.amber,
        title: Text("TV Time"),

      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   fixedColor: Colors.amber,
      //   currentIndex: this.index, // this will be set when a new tab is tapped
      //   onTap: onTabTapped,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: new Icon(Icons.tv),
      //       label: 'TV'
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.photo_camera_outlined), 
      //       label: 'Camera'
      //     )
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Container(
          child: tvList()
        )
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      this.index = index;
      print("$index");
    });
  }

  Widget tvList(){
    final orientation = MediaQuery.of(context).orientation;
    
    return GridView.builder(
      physics: ScrollPhysics(), // to disable GridView's scrolling
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
      scrollDirection: Axis.vertical,
      itemCount: tvLists.length,
      itemBuilder: (BuildContext context, int index) {
        TvList tvList = tvLists[index];
        return GestureDetector(
          onTap: () => tvList.onClicked(
            context, 
            NormalPlayerPage(
              name: tvList.title, 
              onFullscreenHide: _hideVideoFullscreen,
              tvList: tvList,
              index: index,
            )
          ),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            // width: 150.0,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: <Widget>[
                      Hero(
                        tag: tvList.imageUrl,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image(
                            height: 180.0,
                            width: 180.0,
                            image: AssetImage(tvList.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // Positioned(
                      //   left: 30.0,
                      //   bottom: 10.0,
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: <Widget>[
                      //       Text(
                      //         promotion.title,
                      //         style: TextStyle(
                      //           color: Colors.black,
                      //           fontWeight: FontWeight.bold,
                      //           fontSize: 20.0,
                      //           letterSpacing: 1.2,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

