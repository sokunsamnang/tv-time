import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tvmedia/screen/normal_player_page.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
  }

  void _hideVideoFullscreen() {
    Navigator.maybePop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TV Media"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) => new Container(
              color: Colors.green,
              child: new Center(
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Text('$index'),
                ),
              )),
          staggeredTileBuilder: (int index) =>
              new StaggeredTile.count(2, index.isEven ? 2 : 1),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
      ),
    );
  }

  List<Widget> buildExampleElementWidgets() {
    return [
      _buildExampleElementWidget("SINTEL", Image.asset('assets/images/poster.jpg'),() {
        _navigateToPage(NormalPlayerPage(onFullscreenHide: _hideVideoFullscreen,));
      }),
    ];
  }

  Widget _buildExampleElementWidget(String name, Image image, Function onClicked) {
    return Material(
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) => new Container(
            color: Colors.green,
            child: new Center(
              child: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text('$name'),
              ),
            )),
        staggeredTileBuilder: (int index) =>
            new StaggeredTile.count(2, index.isEven ? 2 : 1),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      )
    );
  }

  Future _navigateToPage(Widget routeWidget) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => routeWidget),
    );
  }

}
