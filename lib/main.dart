import 'package:flutter/material.dart';

import 'mastr_screen.dart';


void main(){
runApp(MyApplication());
}
 class MyApplication extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       routes: {MastrScreen.routeName: (_) =>MastrScreen() },
       initialRoute: MastrScreen.routeName,
       theme: ThemeData(
         brightness: Brightness.dark,
           primarySwatch: Colors.blue,
           primaryColor: const Color(0xFF00061a),
           shadowColor: const Color(0xFF001456),
       splashColor:  const Color(0xFF4169e8),
         textTheme: const TextTheme(
           headline2:  TextStyle(
             fontSize: 24,
             color: Colors.white
           )
         ),
       ) ,
     );
   }
 }

