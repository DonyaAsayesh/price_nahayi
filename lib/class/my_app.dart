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
        backgroundColor: Colors.white,
        appBar:
            AppBar(elevation: 0, backgroundColor: Colors.white, actions: const [
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
        body: Column(children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(3, 15, 8, 8),
                child: Icon(CupertinoIcons.money_dollar),
              ),
              Align(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(8, 15, 0, 8),
                child: Text("نرخ آزاد ارز چیست ؟"),
              ))
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Text(
                "نرخ ارز ها در معاملات نقدی و رایج روزانه است ،معاملات نقدی معاملاتی هستند که خریدار و فروشنده به محض انجام معامله ،ارز و ریال را باهم تبادل می نمایند."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 30,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(158, 158, 158, 1),
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "نام ارز",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "قیمت",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "تغییر",
                      style: TextStyle(color: Colors.white),
                    )
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 252, 243, 217),
                  borderRadius: BorderRadius.circular(20)),
              child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  itemCount: 30,
                  itemBuilder: (BuildContext context, int positions) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                      child: Container(
                        width: double.infinity,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("دلار آمریکا"),
                              Text("28000"),
                              Text("-3")
                            ]),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    if (index % 9 == 0) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                        child: Container(
                          width: double.infinity,
                          height: 35,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 190, 99),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [Text(" تبلیغات")]),
                        ),
                      );
                    } else {
                      return SizedBox.shrink();
                    }
                  }),
            ),
          ),
        ]),
      ),
    );
  }
}
