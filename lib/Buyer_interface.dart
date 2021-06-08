import 'package:flutter/material.dart';
import 'package:vendeur_app/texts.dart';
import 'package:vendeur_app/tools.dart';

class Buyer_interface extends StatefulWidget {
  @override
  _Buyer_interfaceState createState() => _Buyer_interfaceState();
}

class _Buyer_interfaceState extends State<Buyer_interface> {
  @override
  int ordernbr = 0, mealnbr = 0;
  double elemWidth = 450;

  Widget notification(int nbr) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(20)),
      child: Center(
          child: texts(
        text: nbr.toString(),
        color: Colors.white,
      )),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.store_mall_directory),
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
        ],
        title: Text('Home'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 30,
            ),
            onPressed: () {
              setState(() {mealnbr++;});
            },
          ),
          ),
          endDrawer: Drawer(
              // Add a ListView to the drawer. This ensures the user can scroll
              // through the options in the drawer if there isn't enough vertical
              // space to fit everything.
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    child: Center(
                      child: Image.asset(resto1),
                    )
                  ),
                  ListTile(
                    title: texts(text:"Edite Profile",color: blue,),
                    onTap: () {},
                    trailing: Icon(Icons.keyboard_arrow_right_outlined),
                  ),
                  ListTile(
                    title: texts(text:"",color: blue,),
                    onTap: () {},
                  ),
                ],
              ),
            ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 2,
                      color: Colors.grey
                    )
                  ]
                ),
                width: elemWidth,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ListTile(
                    leading: Icon(
                      Icons.list_alt_rounded,
                      size: 50,
                      color: blue,
                    ),
                    title: texts(text: "Meals List",fsize: FontWeight.bold,color: blue,),
                    trailing: texts(text: ordernbr.toString(),fsize: FontWeight.bold,color: blue,size: 18,),
                    onTap:(){},
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 2,
                      color: Colors.grey
                    )
                  ]
                ),
                width: elemWidth,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ListTile(
                    leading: Icon(
                      Icons.set_meal,
                      size: 50,
                      color: blue,
                    ),
                    title: texts(text: "Orders List",fsize: FontWeight.bold,color: blue,),
                    trailing: texts(text: mealnbr.toString(),fsize: FontWeight.bold,color: blue,size: 18),
                    onTap:(){},
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
