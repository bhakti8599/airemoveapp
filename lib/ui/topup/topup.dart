import 'package:airemoveapp/ui/loginpage/loginpage.dart';
import 'package:airemoveapp/ui/pricingplan/pricingplan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopUPPageUI extends StatefulWidget {
  @override
  _TopUPPageUIState createState() => _TopUPPageUIState();
}

class _TopUPPageUIState extends State<TopUPPageUI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              elevation: 3,
              backgroundColor: Color(0XFF000000),
              title: Text(
                'AIRemove',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Color(0XFFFD8181)),
              ),
              actions: [
                PopupMenuButton(
                    icon: Icon(Icons.menu,size: 32,color:Colors.blue ,),
                    onSelected: (result) {
                      if (result == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPageUI()),
                        );
                      }
                      else if(result==2){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PricingPlanPageUI()),
                        );
                      }
                    },
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text("Login"),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: Text("Pricing Plan"),
                        value: 2,
                      ),
                      PopupMenuItem(
                        child: Text("features"),
                        value: 2,
                      )
                    ])
              ],
            ),
            body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Pricing Plans',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'have the best plan for your work',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          //height: MediaQuery.of(context).size.height,
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Container(
                                width: 170,
                                height: 40,
                                child: TextButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0))),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0XFF1B1B1B)),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          new MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  PricingPlanPageUI()));
                                    },
                                    child: Text(
                                      'Subscription',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(color: Colors.white),
                                    )),
                              ),
                              Container(
                                width: 170,
                                height: 40,
                                child: TextButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0))),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0XFFA5C6F8)),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          new MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  TopUPPageUI()));
                                    },
                                    child: Text(
                                      'Topup',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(color: Colors.white),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextButton(
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all<BorderSide>(
                                      BorderSide(
                                          color: Color(0XFFA5C6F8), width: 2)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              PricingPlanPageUI()));
                                },
                                child: Text(
                                  'Monthly',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(color: Colors.white),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              PricingPlanPageUI()));
                                },
                                child: Image.asset(
                                  "assets/images/dollar.png",
                                  height: 30,
                                  width: 30,
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              PricingPlanPageUI()));
                                },
                                child: Image.asset(
                                  "assets/images/rupee.png",
                                  height: 30,
                                  width: 30,
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                          color: Color(0XFF1B1B1B),
                          padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                          child: Column(
                            children: [
                              Text(
                                'Topups Plan',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Credits available for use monthly/yearly ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '40 Credits ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                  new Spacer(),
                                  Text(
                                    '599 ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                  new Spacer(),
                                  Text(
                                    '14.98/image ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '200 Credits ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                  new Spacer(),
                                  Text(
                                    '2650 ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                  new Spacer(),
                                  Text(
                                    '13.25/image ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '500 Credits ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                  new Spacer(),
                                  Text(
                                    '5950 ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                  new Spacer(),
                                  Text(
                                    '11.90/image ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '1200 Credits ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                  new Spacer(),
                                  Text(
                                    '12,900 ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                  new Spacer(),
                                  Text(
                                    '10.75/image ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '2800 Credits ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                  new Spacer(),
                                  Text(
                                    '26,900 ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                  new Spacer(),
                                  Text(
                                    '9.61/image ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '5000 Credits ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                  new Spacer(),
                                  Text(
                                    '39,900 ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                  new Spacer(),
                                  Text(
                                    '7.98/image ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  TextButton(
                                      // style: ButtonStyle(
                                      //   side: MaterialStateProperty.all<BorderSide>(
                                      //       BorderSide(color: Colors.white, width: 2)),
                                      //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      //       RoundedRectangleBorder(
                                      //           borderRadius: BorderRadius.circular(30))),
                                      //   backgroundColor: MaterialStateProperty.all(Colors.black),
                                      // ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            new MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        PricingPlanPageUI()));
                                      },
                                      child: Text(
                                        'Show More',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .copyWith(color: Colors.white),
                                      )),
                                  SizedBox(
                                    height: 25,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25))),
                                        // backgroundColor:
                                        //     MaterialStateProperty.all(),
                                      ),
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     new MaterialPageRoute(
                                        //         builder:
                                        //             (BuildContext context) =>
                                        //             SignUPUI()));
                                      },
                                      child: Container(
                                        height: 40,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16)),
                                            gradient: LinearGradient(colors: [
                                              Color(0XFFFF008A),
                                              Color(0XFFFF0000),
                                            ])),
                                        child: Center(
                                          child: Text(
                                            'Buy Now',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6!
                                                .copyWith(color: Colors.white),
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'AIRemove',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(
                                        color: Color(0XFFFD8181),
                                      ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'BGRemove is a smart AI background remover tool which lets you',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                                Text(
                                  'remove backgrounds form an images for ever kind of purpose ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                                Text(
                                  'and lets you save images in all formats',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Pricing',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Features',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'FAQ',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Find Us on',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Image.asset(
                                    "assets/images/facebook-1.png",
                                    height: 35,
                                    width: 35,
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Container(
                                  child: Image.asset(
                                    "assets/images/twitter.png",
                                    height: 35,
                                    width: 35,
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Container(
                                  child: Image.asset(
                                    "assets/images/Insta.png",
                                    height: 35,
                                    width: 35,
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Container(
                                  child: Image.asset(
                                    "assets/images/linkedin.png",
                                    height: 35,
                                    width: 35,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '#MadeInIndia | @2021 AIRemove',
                              style:
                                  Theme.of(context).textTheme.caption!.copyWith(
                                        color: Colors.white,
                                      ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        )
                      ]),
                ))));
  }
}
