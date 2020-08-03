import 'package:flutter/material.dart';
import 'package:quizstar/home.dart';
import 'package:quizstar/src/pages/spamquiz.dart';
import 'package:quizstar/src/pages/wifiquiz.dart';
import 'package:video_player/video_player.dart';
import '../../main_drawer.dart';
import 'spamquiz.dart';

//class Spam extends StatelessWidget {
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//       appBar: AppBar(
//     title: Text('SPAM1'),
//   ));
// }
//}

class Wifi extends StatefulWidget {
  @override
  VideoState createState() => VideoState();
}

class VideoState extends State<Wifi> {
  VideoPlayerController playerController;
  VoidCallback listener;

  @override
  void initState() {
    super.initState();
    listener = () {
      setState(() {});
    };
  }

  void createVideo() {
    if (playerController == null) {
      playerController = VideoPlayerController.asset(
          // "https://r3---sn-vgqsknez.googlevideo.com/videoplayback?source=youtube&mime=video%2Fmp4&itag=22&key=cms1&requiressl=yes&beids=%5B9466592%5D&ratebypass=yes&fexp=9466586,23724337&ei=g3jiWvfCL4O_8wScopaICA&signature=43C209DD37289D74DB39A9BBF7BC442EAC049426.14B818F50F4FA686C13AF5DD1C2A498A9D64ECC9&fvip=3&pl=16&sparams=dur,ei,expire,id,initcwndbps,ip,ipbits,ipbypass,itag,lmt,mime,mip,mm,mn,ms,mv,pl,ratebypass,requiressl,source&ip=54.163.50.118&lmt=1524616041346022&expire=1524813027&ipbits=0&dur=1324.768&id=o-AJvotKVxbyFDCz5LQ1HWQ8TvNoHXWb2-86a_50k3EV0f&rm=sn-p5qyz7s&req_id=e462183e4575a3ee&ipbypass=yes&mip=96.244.254.218&redirect_counter=2&cm2rm=sn-p5qe7l7s&cms_redirect=yes&mm=34&mn=sn-vgqsknez&ms=ltu&mt=1524791367&mv=m")
          //"videos/Butterfly.mp4")
          "videos/wifi.mp4")
        //"https://www.youtube.com/watch?v=HHEwbIp4ICo&feature=youtu.be")
        ..addListener(listener)
        ..setVolume(1.0)
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
    playerController.setVolume(0.0);
    playerController.removeListener(listener);
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Seguridad para WIFI'),
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
                        : Container(
                            height: 30.0,
                          )),
                  )),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Text(
                  'La seguridad en contraseñas de WIFI es muy importante, si no quieres que personas malintencionadas te roben la contraseña de WIFI o tienes miedo de que algún hacker acceda a los dispositivos de tu hogar,' +
                      ' es conveniente cambiar dicha contraseña, para hacerla más fuerte, compleja y robusta. Además de cambiarla de forma regular, también resulta fundamental seleccionar nuevas credenciales que no sean fácimente identificables.'),
            ),
            SizedBox(
              height: 20.0,
            ),
            ButtonTheme(
              height: 60,
              minWidth: 200,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  "¡Intentato!",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WifiQuizz(),
                      ));
                },
                // color: Colors.yellow[700],
              ),
            ),

            // RaisedButton(
            //   child: Text('Ir a inicio'),
            //   onPressed: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => homepage(),
            //         ));
            //     //Navigator.pushNamed(context, '/details_screen');
            //     //Navigator.of(context).pushNamed(DetailsScreen.routename);
            //   },

            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(18.0),
            //       side: BorderSide(color: Colors.amber[800])),
            // )
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            createVideo();
            playerController.play();
          },
          child: Icon(Icons.play_arrow),
          backgroundColor: Colors.yellow[700],
        ));
  }
}
