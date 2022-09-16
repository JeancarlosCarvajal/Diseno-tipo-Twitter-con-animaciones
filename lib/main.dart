import 'package:flutter/material.dart';
import 'package:g_animate_do_app/src/pages/navegacion_page.dart';

import 'package:g_animate_do_app/src/pages/pagina1_page.dart';
import 'package:g_animate_do_app/src/pages/twitter_page.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animate_do',
      home: Pagina1Page() 
      // home: TwitterPage()  
      // home: NavegacionPage()   
    );
  }
}