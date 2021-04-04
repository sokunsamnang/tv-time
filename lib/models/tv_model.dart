
import 'package:flutter/material.dart';

class TvList {
  String imageUrl;
  String title;
  String tvUrl;
  Function onClicked;

  TvList({
    this.imageUrl,
    this.title,
    this.tvUrl,
    this.onClicked
  });
}

List<TvList> tvLists = [
  TvList(
    imageUrl: 'assets/images/apsara_tv_channel.png',
    title: 'Apsara TV',
    tvUrl: 'http://43.245.34.2:9000/live/Apsara11KH.m3u8',
    onClicked: (BuildContext context, Widget routeWidget){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => routeWidget),
      );
    }
  ),

  TvList(
    imageUrl: 'assets/images/bayon_tv_channel.png',
    title: 'Apsara TV',
    tvUrl: 'http://43.245.34.2:9000/live/BayonKH.m3u8',
    onClicked: (BuildContext context, Widget routeWidget){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => routeWidget),
      );
    }
  ),

  TvList(
    imageUrl: 'assets/images/bayon_tv_news_channel.png',
    title: 'Bayon TV',
    tvUrl: 'http://43.245.34.2:9000/live/BTVNewsKH.m3u8',
    onClicked: (BuildContext context, Widget routeWidget){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => routeWidget),
      );
    }
  ),

  TvList(
    imageUrl: 'assets/images/cnc_hd.jpg',
    title: 'CNC HD',
    tvUrl: 'http://43.245.34.2:9000/live/CNCKH.m3u8',
    onClicked: (BuildContext context, Widget routeWidget){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => routeWidget),
      );
    }
  ),

  TvList(
    imageUrl: 'assets/images/ctn_hd.jpg',
    title: 'CTN HD',
    tvUrl: 'http://43.245.34.2:9000/live/CTNKH.m3u8',
    onClicked: (BuildContext context, Widget routeWidget){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => routeWidget),
      );
    }
  ),

  TvList(
    imageUrl: 'assets/images/etv_channel.jpg',
    title: 'ETV Channel',
    tvUrl: 'http://43.245.34.2:9000/live/ETVKH.m3u8',
    onClicked: (BuildContext context, Widget routeWidget){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => routeWidget),
      );
    }
  ),

  TvList(
    imageUrl: 'assets/images/hang_meas_hdtv_channe_hd.jpg',
    title: 'Hang Meas HDTV',
    tvUrl: 'http://111.92.240.134:1934/hm_hdtv/smil:HMHDTV.smil/playlist.m3u8',
    onClicked: (BuildContext context, Widget routeWidget){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => routeWidget),
      );
    }
  ),

  TvList(
    imageUrl: 'assets/images/rasmeyhangmeas_hd.jpg',
    title: 'Hang Meas HD',
    tvUrl: 'http://111.92.240.134:1934/rhm_hdtv/smil:RHMHDTV.smil/playlist.m3u8',
    onClicked: (BuildContext context, Widget routeWidget){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => routeWidget),
      );
    }
  ),

  TvList(
    imageUrl: 'assets/images/mytv_hd.jpg',
    title: 'MYTV',
    tvUrl: 'http://43.245.34.2:9000/live/MyTVKH.m3u8',
    onClicked: (BuildContext context, Widget routeWidget){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => routeWidget),
      );
    }
  ),

  TvList(
    imageUrl: 'assets/images/nicetv.jpg',
    title: 'Nice TV',
    tvUrl: 'http://103.242.12.32:5000/nn_live/nn_x64/aWQ9TmljZVRWLW0taCZ1cmxfYzE9MjAwMCZubl9haz0wMWIwODczYjBhZGRmYTMxYjY0NGI1YmYxMzI3ZDkwNzcwJm50dGw9NCZucGlwcz0xMDMuMjQyLjEyLjIxOjUxMDAmbmNtc2lkPTEwMDAzMiZuZ3M9NWFlZWE4NzgwMDAyNjZiZjY4NGYxM2I2MGJmMmUwYmYmbm5kPWV4dHJhbmV0LmlzcC5zaW5ldCZuZnQ9dHMmbm5fdXNlcl9pZD1iYWthZmlqQDJvZGVtLmNvbSZuZHQ9cGhvbmUmbmRpPTMwMDc0ZDZhNjU3MSZuZHY9NC4wLjAuMS4yLlNDLUpQWi1BUEhPTkUuMC4wX1JFTEVBU0UmbnN0PWlwdHYmbm5fdHJhY2VfaWQ9NWFlZWE4Nzg0ODYxNGUwNmY2ZTg0NzQ1OTVjMDQyN2UmbmNhPSUyNm5uX2NwJTNkc3VwZXJuZXQmbmFsPTAxNzhhOGVlNWEwNjA3ZmIxMzhjNDYzMzdiZDI4Y2U3MDdiMWQyMGIxODhjZjM,/NiceTV-m-h.m3u8',
    onClicked: (BuildContext context, Widget routeWidget){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => routeWidget),
      );
    }
  ),

  TvList(
    imageUrl: 'assets/images/pnn.png',
    title: 'PNN',
    tvUrl: 'http://43.245.34.2:9000/live/PNNKH.m3u8',
    onClicked: (BuildContext context, Widget routeWidget){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => routeWidget),
      );
    }
  ),

  TvList(
    imageUrl: 'assets/images/tvk_channel.png',
    title: 'TVK Channel',
    tvUrl: 'https://livefta.malimarcdn.com/tvkedge/tvkhd.stream/chunklist.m3u8',
    onClicked: (BuildContext context, Widget routeWidget){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => routeWidget),
      );
    }
  ),

  TvList(
    imageUrl: 'assets/images/tvk2.png',
    title: 'TVK2 Channel',
    tvUrl: 'https://livefta.malimarcdn.com/tvkedge/tvk2.stream/chunklist.m3u8',
    onClicked: (BuildContext context, Widget routeWidget){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => routeWidget),
      );
    }
  ),

  TvList(
    imageUrl: 'assets/images/townfullhdtv.jpg',
    title: 'Town HDTV',
    tvUrl: 'http://43.245.34.2:9000/live/TownTVKH.m3u8',
    onClicked: (BuildContext context, Widget routeWidget){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => routeWidget),
      );
    }
  ),

  TvList(
    imageUrl: 'assets/images/tv3_channel.png',
    title: 'TV3',
    tvUrl: 'http://43.245.34.2:9000/live/TV3KH.m3u8',
    onClicked: (BuildContext context, Widget routeWidget){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => routeWidget),
      );
    }
  ),

  TvList(
    imageUrl: 'assets/images/tv5_channel.png',
    title: 'TV5',
    tvUrl: 'http://43.245.34.2:9000/live/TV5KH.m3u8',
    onClicked: (BuildContext context, Widget routeWidget){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => routeWidget),
      );
    }
  ),

  TvList(
    imageUrl: 'assets/images/tv9_channel.png',
    title: 'TV9',
    tvUrl: 'http://43.245.34.2:9000/live/TV9KH.m3u8',
    onClicked: (BuildContext context, Widget routeWidget){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => routeWidget),
      );
    }
  ),

];
