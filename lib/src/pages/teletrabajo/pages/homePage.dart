import 'package:flutter/material.dart';
import 'package:quizstar/src/pages/teletrabajo/model/tile_model.dart';
import 'package:quizstar/src/pages/teletrabajo/data/data.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    pairs = getPairs();

    pairs.shuffle();

    visiblePairs = pairs;
    selcted = true;
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        visiblePairs = getQuestions();
        selcted = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;
    Orientation currentOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.indigo, Colors.indigo])),
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: hei * 0.05,
            ),
            Text(
              "$points/800",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            Text("puntos"),
            SizedBox(
              height: currentOrientation == Orientation.portrait
                  ? hei * 0.1
                  : hei * 0.05,
            ),
            points != 800
                ? GridView(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        mainAxisSpacing: 0.0, maxCrossAxisExtent: 100),
                    children: List.generate(visiblePairs.length, (index) {
                      return Tile(
                        imageAssetsPat: visiblePairs[index].getImageAssetPath(),
                        parent: this,
                        tileIndex: index,
                      );
                    }),
                  )
                : Container(
                    width: wid,
                    height: hei * 0.4,
                    child: Center(
                        child: FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.indigo)),
                      onPressed: () {
                        setState(() {
                          points = 0;

                          pairs = getPairs();

                          pairs.shuffle();

                          visiblePairs = pairs;
                          selcted = true;
                          Future.delayed(const Duration(seconds: 5), () {
                            print("2 seconds done");
                            setState(() {
                              visiblePairs = getQuestions();
                              selcted = false;
                            });
                          });
                        });
                      },
                      child: Text(
                        "Jugar de nuevo",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    )),
                  )
          ],
        ),
      ),
    );
  }
}

class Tile extends StatefulWidget {
  String imageAssetsPat;
  int tileIndex;

  _HomePageState parent;
  Tile({this.imageAssetsPat, this.parent, this.tileIndex});

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!selcted) {
          if (selectedImageAssetPath != "") {
            if (selectedImageAssetPath ==
                pairs[widget.tileIndex].getImageAssetPath()) {
              selcted = true;
              Future.delayed(const Duration(seconds: 2), () {
                points += 100;

                setState(() {});
                widget.parent.setState(() {
                  pairs[widget.tileIndex].setImageAssetPath("");
                  pairs[selectedTileIndex].setImageAssetPath("");
                  selectedImageAssetPath = "";
                  selcted = false;
                });
              });
            } else {
              selcted = true;
              Future.delayed(const Duration(seconds: 2), () {
                setState(() {});
                widget.parent.setState(() {
                  pairs[widget.tileIndex].setIsSelected(false);
                  pairs[selectedTileIndex].setIsSelected(false);
                  selectedImageAssetPath = "";
                  selcted = false;
                });
              });
            }
          } else {
            selectedTileIndex = widget.tileIndex;
            selectedImageAssetPath =
                pairs[widget.tileIndex].getImageAssetPath();
          }
          setState(() {
            pairs[widget.tileIndex].setIsSelected(true);
          });
        }
      },
      child: Container(
        margin: EdgeInsets.all(7),
        child: pairs[widget.tileIndex].getImageAssetPath() == ""
            ? Image.asset("assets/correct2.png")
            : Image.asset(pairs[widget.tileIndex].getIsSelected()
                ? pairs[widget.tileIndex].getImageAssetPath()
                : widget.imageAssetsPat),
      ),
    );
  }
}
