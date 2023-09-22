import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('fa'), // farsi
      ],
      theme: ThemeData(fontFamily: 'iransans'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(elevation: 0,backgroundColor: Colors.white,
          actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Icon(CupertinoIcons.money_dollar_circle,color: Colors.black,),
          ),
          Align(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 98, 0),
            child: Text("قیمت بروز ارز",style:TextStyle(color: Colors.black) ,),
          )),
          Expanded(
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Icon(CupertinoIcons.home,color: Colors.black,),
                  )))
        ]),
      ),
    );
  }
}
