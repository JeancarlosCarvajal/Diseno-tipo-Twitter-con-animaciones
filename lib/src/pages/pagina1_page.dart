import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animate_do/animate_do.dart';

import 'package:g_animate_do_app/src/pages/navegacion_page.dart';
import 'package:g_animate_do_app/src/pages/twitter_page.dart';


class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,

        title: FadeIn(
          duration: Duration( milliseconds: 500 ),
          child: Text('Animations')
        ),

        actions: <Widget>[

          IconButton(
            icon: FaIcon( FontAwesomeIcons.twitter ),
            onPressed: (){
              Navigator.push(context,  MaterialPageRoute(builder: (BuildContext context) => const TwitterPage() )  );
            },
          ),

          SlideInLeft(
            from: 100,
            child: IconButton(
              icon: Icon( Icons.navigate_next ),
              onPressed: (){
                Navigator.push(context,  CupertinoPageRoute(builder: (BuildContext context) => const Pagina1Page() )  );
              },
            ),
          ),

        ],
      ),


      floatingActionButton: ElasticInRight(
        child: FloatingActionButton(
          child: FaIcon( FontAwesomeIcons.play ),
          onPressed: (){
            Navigator.push( context,  MaterialPageRoute( builder: (BuildContext context) => const NavegacionPage() ) );
          }
        ),
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ElasticIn(
              delay: Duration( milliseconds: 1100 ),
              child: Icon( Icons.new_releases, color: Colors.blue, size: 40 )
            ),

            FadeInDown(
              delay: Duration( milliseconds: 200 ),
              child: Text('Hello', style: TextStyle( fontSize: 40, fontWeight: FontWeight.w200 ) )
            ),


            FadeInDown(
              delay: Duration( milliseconds: 800 ),
              child: Text('I am a little title', style: TextStyle( fontSize: 20, fontWeight: FontWeight.w400 ) )
            ),

            FadeInLeft(
              delay: Duration( milliseconds: 1100 ),
              child: Container(
                width: 220,
                height: 2,
                color: Colors.blue,
              ),
            )

          ],
        ),
      ),



   );
  }
}