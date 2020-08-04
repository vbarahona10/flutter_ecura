import 'package:flutter/material.dart';
import 'package:quizstar/home.dart';
import 'package:quizstar/src/pages/spam/spamquiz.dart';
import 'package:quizstar/src/pages/teletrabajo/pages/homePage.dart';
import 'package:quizstar/src/pages/teletrabajo/pages/inicio.dart';
import 'package:video_player/video_player.dart';
import '../../../main_drawer.dart';
import '../spam/spamquiz.dart';

class Teletrabajo extends StatefulWidget {
  @override
  VideoState createState() => VideoState();
}

class VideoState extends State<Teletrabajo> {
  VideoPlayerController playerController;
  VoidCallback listener;

  @override
  void initState() {
    super.initState();
    listener = () {
      setState(() {});
    };
  }

  List<String> des = [
    "SPAM son mensajes no solicitados, sobre todo de tipo publicitario, y que son enviados de forma masiva.",
  ];

  void createVideo() {
    if (playerController == null) {
      playerController = VideoPlayerController.asset(
          // "https://r3---sn-vgqsknez.googlevideo.com/videoplayback?source=youtube&mime=video%2Fmp4&itag=22&key=cms1&requiressl=yes&beids=%5B9466592%5D&ratebypass=yes&fexp=9466586,23724337&ei=g3jiWvfCL4O_8wScopaICA&signature=43C209DD37289D74DB39A9BBF7BC442EAC049426.14B818F50F4FA686C13AF5DD1C2A498A9D64ECC9&fvip=3&pl=16&sparams=dur,ei,expire,id,initcwndbps,ip,ipbits,ipbypass,itag,lmt,mime,mip,mm,mn,ms,mv,pl,ratebypass,requiressl,source&ip=54.163.50.118&lmt=1524616041346022&expire=1524813027&ipbits=0&dur=1324.768&id=o-AJvotKVxbyFDCz5LQ1HWQ8TvNoHXWb2-86a_50k3EV0f&rm=sn-p5qyz7s&req_id=e462183e4575a3ee&ipbypass=yes&mip=96.244.254.218&redirect_counter=2&cm2rm=sn-p5qe7l7s&cms_redirect=yes&mm=34&mn=sn-vgqsknez&ms=ltu&mt=1524791367&mv=m")
          //"videos/Butterfly.mp4")
          "videos/ECURA_Teletrabajo.mp4")
        //"https://www.youtube.com/watch?v=HHEwbIp4ICo&feature=youtu.be")
        ..addListener(listener)
        // ..setVolume(1.0)
        ..initialize()
        ..play();
    } else {
      if (playerController.value.isPlaying) {
        playerController.pause();
      } else {
        playerController.initialize();
        playerController.play();
      }
    }
  }

  @override
  void deactivate() {
    //  playerController.setVolume(1.0);
    // playerController.removeListener(listener);
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TELETRABAJO'),
      ),
      drawer: mainDrawer(),
      body: Center(
        child: Column(children: <Widget>[
          Material(
            child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  child: (playerController != null
                      ? VideoPlayer(
                          playerController,
                        )
                      : Container()),
                )),
          ),
          ButtonTheme(
            height: 60,
            minWidth: 200,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                "Aprendiendo con ECURA",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Inicio(),
                    ));
              },
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(""),
          ),
          SizedBox(
            width: 350.0,
            height: 300.0,
            child: Text(
              "Teletrabajo, trabajo a distancia, home office, muy conocido ahora, donde una persona trabaja desde su casa, y ya no es necesario ir a una oficina, a pasar horas en el tráfico. Para esto solo necesitas los implementos para realizar tu trabajo de forma óptima y organizada. \n\nQué implementos mínimos necesitas para realizar teletrabajo?, haz click en los siguientes botones:\n1. Reproduccion donde veras un clip de teletrabajo.\n2. Aprendiendo con ECURA y aplica tus conocimientos. ",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.indigoAccent[900],
                fontFamily: "Alike-Regular",
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          createVideo();
          playerController.play();
        },
        label: Text('Reproducir'),
        icon: Icon(Icons.play_arrow),
        backgroundColor: Colors.yellow[700],
      ),
    );
  }
} //end de la clase
