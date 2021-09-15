import 'package:airemoveapp/ui/pricingplan/pricingplan.dart';
import 'package:airemoveapp/ui/register/registerpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoginPageUI extends StatefulWidget {
  @override
  _LoginPageUIState createState() => _LoginPageUIState();
}

class _LoginPageUIState extends State<LoginPageUI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
            body: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/background_image.png",
                        ))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 70,
                              ),
                              Text(
                                'Log In',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: Colors.white),
                              ),
                              Container(
                                height: 70,
                                padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                                child: Observer(
                                  builder: (_) => TextField(
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(color: Colors.white),
                                    // controller: userNameController,
                                    keyboardType: TextInputType.text,
                                    // onChanged: loginViewModel.setUsername,
                                    decoration: InputDecoration(
                                        border: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        // Border(bottom: BorderSide(color: Colors.white)),
                                        filled: true,
                                        prefixIcon: Icon(
                                          Icons.person,
                                          color: Colors.white,
                                        ),
                                        labelText: ' Username',
                                        hintText: 'Enter Username',
                                        // errorText: loginViewModel
                                        //     .vendorloginViewModelErrorState
                                        //     .username,
                                        focusColor: Colors.white,
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(color: Colors.white),
                                        labelStyle: Theme.of(context)
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(
                                              color: Colors.white,
                                            )),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                child: Observer(
                                  builder: (_) => TextField(
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(color: Colors.white),
                                    keyboardType: TextInputType.visiblePassword,
                                    // controller: passwordController,
                                    // onChanged: loginViewModel.setPass,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        //  border: UnderlineInputBorder(),
                                        prefixIcon: Icon(
                                          Icons.lock,
                                          color: Colors.white,
                                        ),
                                        //suffixIcon: Icon(Icons.done),

                                        fillColor: Colors.white,
                                        focusColor: Colors.white,
                                        labelText: 'Password',
                                        // errorText: loginViewModel
                                        //     .vendorloginViewModelErrorState.pass,
                                        hintText: 'Enter Password',
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(color: Colors.white),
                                        labelStyle: Theme.of(context)
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(color: Colors.white)),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     new MaterialPageRoute(
                                        //         builder:
                                        //             (BuildContext context) =>
                                        //                 SignUPUI()));
                                      },
                                      child: Text(
                                        'Forget?',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                // decoration:
                                                //TextDecoration.underline,
                                                color: Colors.white),
                                      ))
                                ],
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30))),
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFF5D60F5)),
                                  ),
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             DashboardPageUI()));
                                  },
                                  child: Container(
                                      // color: Color(0xFF6B4668),
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      padding: EdgeInsets.all(10),
                                      child: Center(
                                          child: Text(
                                        'Login Now',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      )))),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "or Login With",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/facebook-1.png",
                                    height: 30,
                                    width: 30,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image.asset(
                                    "assets/images/gmail.png",
                                    height: 30,
                                    width: 30,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image.asset(
                                    "assets/images/Apple.png",
                                    height: 30,
                                    width: 30,
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don't have an account",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1!
                                        .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            new MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        SignUPUI()));
                                      },
                                      child: Text(
                                        'Sign Up',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                decoration:
                                                    TextDecoration.underline,
                                                color: Color(0xFFA5C6F8)),
                                      ))
                                ],
                              ),
                              Expanded(flex: 1, child: Container())
                            ],
                          ),
                        ),
                      )
                    ]))));
  }
}
