import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tvmedia/models/tv_model.dart';

class NormalPlayerPage extends StatefulWidget {
  final TvList tvList;
  final int index;
  final String name;
  final void Function() onFullscreenHide;
  const NormalPlayerPage({Key key, this.name, this.onFullscreenHide, this.tvList, this.index})
  : super(key: key);

  @override
  _NormalPlayerPageState createState() => _NormalPlayerPageState();
}

class _NormalPlayerPageState extends State<NormalPlayerPage> {
  BetterPlayerController _betterPlayerController;

  @override
  void initState() {
    BetterPlayerConfiguration betterPlayerConfiguration =
    BetterPlayerConfiguration(
      controlsConfiguration: BetterPlayerControlsConfiguration(
        textColor: Colors.white,
        iconsColor: Colors.white,
        enableProgressText: true,
      ),
      aspectRatio: 16 / 9,
      fit: BoxFit.contain,
      autoPlay: true,
      fullScreenByDefault: true,
      deviceOrientationsOnFullScreen: [
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]
    );
    _betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
    _betterPlayerController.setupDataSource(
      BetterPlayerDataSource.network(widget.tvList.tvUrl));
    // _betterPlayerController.addEventsListener((event) {
    //   if (event.betterPlayerEventType == BetterPlayerEventType.hideFullscreen) {
    //     widget.onFullscreenHide();
    //   }
    // });
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(widget.name),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayer(controller: _betterPlayerController),
          ),
        ],
      ),
    );
  }
}
