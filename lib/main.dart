import 'package:flutter/material.dart';

void main() => runApp(MyApp());//adalah main pada myapp


class MyApp extends StatelessWidget {
  final appTitle = 'UTS';//class myApp dengan stateless widget dan dengan apptitlle dengan nama UTS

@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: appTitle,
    home: MyHomePage(title: appTitle),//ini adalah material app dengan debug show bernilai false dengan title berasal dari apptitle dan juga pada homepage

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
                Tab(icon: Icon(Icons.people)),//dengan material app dan pada home kita default tab controller dengan length sebanyak 3 dan membuat child scaffold,appbar berisi appbar dan bottom berisi tabbar dan berisi tab icon
              ],
            ),
            title: Text('Aplikasi JKT48'),//title ini aplikasi JKT48
          ),
          body: TabBarView(
            children: [
              SnackBarPage(),
              FirstRoute(),
              SecondRoute(),//body dengan berisi tabbarview dengan children cnackbar,first route dan second route
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
                          Text("Nabilah Fitriana", style: TextStyle(color: Colors.white),)//menampilkan kalimat tersebut, begitu sampai list 3
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
              onPressed: () {//retur pada center, lalu child berisi raised button yang akan menampilkan button, dan jika ditekan akan menampilkan list yang sudah dibuat diatas
                // Some code to undo the change.
              },
            ),
          );

          // Find the Scaffold in the widget tree and use
          // it to show a SnackBar.
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('Tampilkan profil'),//pada child ini akan menampilkan teks pada button, teks nya adalah tampilkan profil
      ),
    );
  }
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social media Nabila Fitriana'),//dengan title dengan teks social media nabila firtiana
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
                          Text("jkt48.lala", style: TextStyle(color: Colors.white),)//menampilkan kalimat tersebut, begitu sampai list 3
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
        title: Text("FOTO"),//dengan title adalah foto
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Image.asset("images/lala.jpg", width: 600.0, height: 240.0,
              ),
            Image.asset("images/lala1.jpg", width: 600.0, height: 240.0,
            ),
            Image.asset("images/lala2.jpg", width: 600.0, height: 240.0,//ini adalah daftar gambar yang akan ditampilkan di menu tersebut
            ),

            ],
          ),
        ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);//isi pada myhomepage dengan isian key dan menampilkan title

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: appirwan(),
      drawer: Drawer(//akan menampilkan appbar dengan isian appbar, lalu body adalah appirwan dan drawer
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
                color: Colors.blue,//dengan drawer header dengan child yang akan menampilkan text irwan prasetyo sari,dengan box decoration dan berwarna biru
              ),
            ),
            ListTile(
              title: Text('halaman 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);//dengan list tile dengan title halaman 1 dan dengan navigator pop content
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
