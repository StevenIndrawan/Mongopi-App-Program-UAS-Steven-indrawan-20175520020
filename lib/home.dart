import 'data.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //app bar
    final appBar = AppBar(
      elevation: .5,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
      title: Text('MENU MONGOPI'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Cart()),
  );},
        )
      ],
    );

    ///create coffee tile hero
    createTile(Coffee coffee) => Hero(
          tag: coffee.title,
          child: Material(
            elevation: 15.0,
            shadowColor: Colors.brown.shade900,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'detail/${coffee.title}');
              },
              child: Image(
                image: AssetImage(coffee.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );

    ///create coffee grid tiles
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 2 / 3,
            crossAxisCount: 3,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: Coffees.map((coffee) => createTile(coffee)).toList(),
          ),
        )
      ],
    );

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      drawer: Drawer(
        
        child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Steven Indrawan 20175520020',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.scaleDown,
                    image: AssetImage('assets/logo.jpeg'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Home'),
            onTap: () => {
              Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          )
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('About Us'),
            onTap: () => {Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => About()),
          )},
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Contact Us'),
            onTap: () => {Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Contact()),
          )},
          ),
        ],
      ),
      ),
      appBar: appBar,
      body: grid,
    );
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar (title: Text('Contact Us'),
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      ),
      body: new Center(
        
        child: Text('Phone  : +62 878-3456-8899',textAlign: TextAlign.justify,),
      ),
    );
  }
}
class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar (title: Text('Contact Us'),
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/logo.jpeg",
              width: 380.0,
              height: 250.0,
              fit: BoxFit.contain,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
            ),
            Text(
              "Mongopi adalah usaha kopi botolan yang menjual kopi dengan harga terjangkau namun kualitas terbaik, dengan kopi pilihan dari petani kopi langsung, mongopi menjual kopi botolan yang berkualitas.",textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KERANJANG"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Menu Order sedang dalam pengembangan!'),
        ),
      ),
    );
  }
}