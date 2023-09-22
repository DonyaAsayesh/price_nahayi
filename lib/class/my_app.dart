import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa'), // farsi
      ],
      theme: ThemeData(fontFamily: 'iransans'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(elevation: 0, backgroundColor: Colors.white, actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              CupertinoIcons.money_dollar_circle,
              color: Colors.black,
            ),
          ),
          Align(
              child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 98, 0),
            child: Text(
              "قیمت بروز ارز",
              style: TextStyle(color: Colors.black),
            ),
          )),
          Expanded(
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      CupertinoIcons.home,
                      color: Colors.black,
                    ),
                  )))
        ]),
        body:  Column(children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(3, 15, 8, 8),
                child: Icon(CupertinoIcons.money_dollar),
              ),
              Align(child: Padding(
                padding: EdgeInsets.fromLTRB(8, 15, 0, 8),
                child: Text("نرخ آزاد ارز چیست ؟"),
              ))
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Text("نرخ ارز ها در معاملات نقدی و رایج روزانه است ،معاملات نقدی معاملاتی هستند که خریدار و فروشنده به محض انجام معامله ،ارز و ریال را باهم تبادل می نمایند."),
          ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(width: double.infinity,height: 30, decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(50)), child: Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [Text("نام ارز"),Text("قیمت"),Text("تغییر")]),),
        )]),
      ),
    );
  }
}
