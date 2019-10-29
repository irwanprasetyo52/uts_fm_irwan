import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  final appTitle = 'UTS';

@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: appTitle,
    home: MyHomePage(title: appTitle),

  );

}
}
class appirwan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.people)),
                Tab(icon: Icon(Icons.people)),
                Tab(icon: Icon(Icons.people)),
              ],
            ),
            title: Text('Aplikasi JKT48'),
          ),
          body: TabBarView(
            children: [
              SnackBarPage(),
              FirstRoute(),
              SecondRoute(),
            ],
          ),
        ),
      ),
    );
  }
}
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(//scaffold adalah struktur dasar dalam material desain
      appBar: AppBar(
        title: new Text("profil nabila fitriana"),//judul yang akan ditampilkan di appbar
      ),
      body: new Container(//pada body membuat container baru
        child: ListView(//dan children adalah listview
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),//dengan padding endgeinser all sebesar 10
              child: Row(
                children: <Widget>[
                  Container(
                    width: 80.0,
                    height: 80.0,
                    color: Colors.orange,
                    child: new Icon(Icons.music_note, color: Colors.white, size: 30.0,),//dengan container width dan height sebesar 80.0 dan berwarna orange
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      height: 80.0,
                      color: Colors.blue[200],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("nama", style: TextStyle(color: Colors.white, fontSize: 15.0)),//menampilkan text list 1 dengan warna putih dan font size 15
                          Text("Nabilah Fitriana", style: TextStyle(color: Colors.white),)//menampilkan kalimat tersebut, begitu sampai list 4
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 80.0,
                    height: 80.0,
                    color: Colors.orange,
                    child: new Icon(Icons.email, color: Colors.white, size: 30.0,),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      height: 80.0,
                      color: Colors.blue[200],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Umur", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                          Text("19 tahun", style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 80.0,
                    height: 80.0,
                    color: Colors.orange,
                    child: new Icon(Icons.school, color: Colors.white, size: 30.0,),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      height: 80.0,
                      color: Colors.blue[200],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Kuliah", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                          Text("Universitas Pelita Harapan", style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 80.0,
                    height: 80.0,
                    color: Colors.orange,
                    child: new Icon(Icons.perm_identity, color: Colors.white, size: 30.0,),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      height: 80.0,
                      color: Colors.blue[200],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Kegiatan", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                          Text("member JKT48 generasi 7", style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content:Myapp(),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the Scaffold in the widget tree and use
          // it to show a SnackBar.
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('Tampilkan profil'),
      ),
    );
  }
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social media Nabila Fitriana'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),//dengan padding endgeinser all sebesar 10
              child: Row(
                children: <Widget>[
                  Container(
                    width: 80.0,
                    height: 80.0,
                    color: Colors.red,
                    child: new Icon(Icons.account_box, color: Colors.white, size: 30.0,),//dengan container width dan height sebesar 80.0 dan berwarna orange
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      height: 80.0,
                      color: Colors.blue[200],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("instagram", style: TextStyle(color: Colors.white, fontSize: 15.0)),//menampilkan text list 1 dengan warna putih dan font size 15
                          Text("jkt48.lala", style: TextStyle(color: Colors.white),)//menampilkan kalimat tersebut, begitu sampai list 4
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 80.0,
                    height: 80.0,
                    color: Colors.red,
                    child: new Icon(Icons.email, color: Colors.white, size: 30.0,),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      height: 80.0,
                      color: Colors.blue[200],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("twitter", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                          Text("@N_LalaJKT48", style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 80.0,
                    height: 80.0,
                    color: Colors.red,
                    child: new Icon(Icons.add_call, color: Colors.white, size: 30.0,),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      height: 80.0,
                      color: Colors.blue[200],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Contact person", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                          Text("081295337343", style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
            ),
          );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FOTO"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Image.asset("images/lala.jpg", width: 600.0, height: 240.0,
              ),
            Image.asset("images/lala1.jpg", width: 600.0, height: 240.0,
            ),
            Image.asset("images/lala2.jpg", width: 600.0, height: 240.0,
            ),

            ],
          ),
        ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: appirwan(),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('IRWAN PRASETYO SARI'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('halaman 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('halaman 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('halaman 3'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
