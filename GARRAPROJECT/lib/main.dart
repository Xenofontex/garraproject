import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:garraproject/Drawer.dart';
import 'package:flutter/src/painting/image_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Garra",
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ClipRect(
        child: Banner(
          message: "Biruta!",
          location: BannerLocation.topStart,
          child: Container(
            color: Colors.amber,
            width: 90,
            height: 100,
          ),
        ),
      ),
      
      drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      fit: BoxFit.scaleDown,
                      image: AssetImage("assets/images/acoustic-guitar-012.jpg")),
                ),
                child: null,
              ),
              ListTile(
                title: Text('Início'),
                leading: Icon(Icons.home),
                onTap: () {},
              ),
              ListTile(
                title: Text('Buscar'),
                leading: Icon(Icons.search),
                onTap: () {},
              ),
            ],
          )),

    );
    
  }
}
