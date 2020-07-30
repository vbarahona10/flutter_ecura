import 'package:flutter/material.dart';
import 'chatpage.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("EcuraChat"),
          elevation:
              Theme.of(context).platform == TargetPlatform.iOS ? 0.1 : 4.0,
          backgroundColor: Colors.indigo,
        ),
        body: SingleChildScrollView(
            child: Container(
                child: Column(children: <Widget>[
          Stack(children: <Widget>[
            new Container(
              height: MediaQuery.of(context).size.height * .5,
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              child: Stack(),
            ),
            new Center(
                child: new Container(
              height: 700.00,
              width: 325.00,
              margin: new EdgeInsets.symmetric(vertical: 20),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 6,
                    offset: Offset(1, 1),
                  )
                ],
                color: Colors.white,
              ),
              child: MyStatelessWidget(),
            ))
          ])
        ]))));
  }
}

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    this.thumbnail,
    this.title,
    this.user,
    this.container,
  });

  final Widget thumbnail;
  final String title;
  final String user;
  final Widget container;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: _VideoDescription(
              title: title,
              user: user,
              container: container,
            ),
          ),
          Center(
            child: thumbnail,
          ),
        ],
      ),
    );
  }
}

class _VideoDescription extends StatelessWidget {
  const _VideoDescription({
    Key key,
    this.title,
    this.user,
    this.viewCount,
    this.container,
  }) : super(key: key);

  final String title;
  final String user;
  final int viewCount;
  final Widget container;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(3.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            user,
            style: const TextStyle(fontSize: 12.0, fontStyle: FontStyle.italic),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Container(
            height: 60,
            width: 170,
            child: container,
          ),
        ],
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      itemExtent: 110.0,
      children: <CustomListItem>[
        CustomListItem(
          user: 'seen 2 min ago',
          thumbnail: CircleAvatar(
            backgroundImage: AssetImage('images/chico1.png'),
            radius: 40,
          ),
          container: ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => chatpage()));
              //Navigator.pushNamed(context, '/details_screen');
              //Navigator.of(context).pushNamed(DetailsScreen.routename);
            },
            title: Row(
              // Replace with a Row for horizontal icon + text
              children: <Widget>[
                Expanded(
                    child: Text("Hey want to catch up today?",
                        style: TextStyle(color: Colors.black, fontSize: 12.0))),
              ],
            ),
          ),
          title: 'JIM DOE',
        ),
        CustomListItem(
          user: 'online',
          thumbnail: CircleAvatar(
            backgroundImage: AssetImage('images/chica2.png'),
            radius: 40,
          ),
          container: ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => chatpage()));
              //Navigator.pushNamed(context, '/details_screen');
              //Navigator.of(context).pushNamed(DetailsScreen.routename);
            },
            title: Row(
              // Replace with a Row for horizontal icon + text
              children: <Widget>[
                Expanded(
                    child: Text(
                        "Ohh! That's cool. Would love to meet you! Diner?",
                        style: TextStyle(color: Colors.black, fontSize: 12.0))),
              ],
            ),
          ),
          title: 'JANE DOE',
        ),
        CustomListItem(
          user: 'seen 10 min ago',
          thumbnail: CircleAvatar(
            backgroundImage: AssetImage('images/chica3.png'),
            radius: 40,
          ),
          container: ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => chatpage()));
              //Navigator.pushNamed(context, '/details_screen');
              //Navigator.of(context).pushNamed(DetailsScreen.routename);
            },
            title: Row(
              // Replace with a Row for horizontal icon + text
              children: <Widget>[
                Expanded(
                    child: Text("I cannot belive this! This is ridiculous!",
                        style: TextStyle(color: Colors.black, fontSize: 12.0))),
              ],
            ),
          ),
          title: 'JONH DOE',
        ),
        CustomListItem(
          user: 'online',
          thumbnail: CircleAvatar(
            backgroundImage: AssetImage('images/chico4.png'),
            radius: 40,
          ),
          container: ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => chatpage()));
              //Navigator.pushNamed(context, '/details_screen');
              //Navigator.of(context).pushNamed(DetailsScreen.routename);
            },
            title: Row(
              // Replace with a Row for horizontal icon + text
              children: <Widget>[
                Expanded(
                    child: Text("Bhai mille timepass hojayega dono ka",
                        style: TextStyle(color: Colors.black, fontSize: 12.0))),
              ],
            ),
          ),
          title: 'EK AUR DOE',
        ),
        CustomListItem(
          user: 'online',
          thumbnail: CircleAvatar(
            backgroundImage: AssetImage('images/chica1.png'),
            radius: 40,
          ),
          container: ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => chatpage()));
              //Navigator.pushNamed(context, '/details_screen');
              //Navigator.of(context).pushNamed(DetailsScreen.routename);
            },
            title: Row(
              // Replace with a Row for horizontal icon + text
              children: <Widget>[
                Expanded(
                    child: Text("Tu mat mil bhai mood nai bigadna milke",
                        style: TextStyle(color: Colors.black, fontSize: 12.0))),
              ],
            ),
          ),
          title: 'YE B DOE',
        ),
        CustomListItem(
          user: 'seen 10 min ago',
          thumbnail: CircleAvatar(
            backgroundImage: AssetImage('images/chica2.png'),
            radius: 40,
          ),
          container: ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => chatpage()));
              //Navigator.pushNamed(context, '/details_screen');
              //Navigator.of(context).pushNamed(DetailsScreen.routename);
            },
            title: Row(
              // Replace with a Row for horizontal icon + text
              children: <Widget>[
                Expanded(
                    child: Text("I cannot belive this! This is ridiculous!",
                        style: TextStyle(color: Colors.black, fontSize: 12.0))),
              ],
            ),
          ),
          title: 'JONH DOE',
        ),
      ],
    );
  }
}
