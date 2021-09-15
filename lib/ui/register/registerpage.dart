import 'package:airemoveapp/ui/loginpage/loginpage.dart';
import 'package:airemoveapp/ui/pricingplan/pricingplan.dart';
import 'package:airemoveapp/viewmodel/loginviewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

LoginViewModel loginViewModel = LoginViewModel();

class SignUPUI extends StatefulWidget {
  @override
  _SignUPUIState createState() => _SignUPUIState();
}

class _SignUPUIState extends State<SignUPUI> {
  final userNameController = TextEditingController();
  final mobileController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  @override
  void initState() {
    loginViewModel.setupValidations();
    super.initState();
  }

  @override
  void dispose() {
    loginViewModel.disposeValidations();
    super.dispose();
  }

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
            body: SingleChildScrollView(
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/background_image.png",
                          ))),
                  height: MediaQuery.of(context).size.height,
                  child: Column(children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              "Register",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
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
                                .copyWith(color: Color(0xFF000000)),
                            controller: userNameController,
                            keyboardType: TextInputType.text,
                            onChanged: loginViewModel.setUsername,
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Username ',
                                hintText: 'Enter Username',
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                errorText: loginViewModel
                                    .vendorloginViewModelErrorState.username,
                                focusColor: Colors.white,
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(color: Colors.white),
                                labelStyle: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(color: Colors.white)),
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Observer(
                        builder: (_) => TextField(
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(color: Color(0xFF000000)),
                          //controller: passwordController,
                          onChanged: loginViewModel.setPass,
                          obscureText: true,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.white,
                              ),
                              labelText: 'Email',
                              errorText: loginViewModel
                                  .vendorloginViewModelErrorState.pass,
                              hintText: 'Enter Email',
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
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Observer(
                        builder: (_) => TextField(
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(color: Colors.white),
                          controller: passwordController,
                          onChanged: loginViewModel.setPass,
                          obscureText: true,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              labelText: 'Password',
                              errorText: loginViewModel
                                  .vendorloginViewModelErrorState.pass,
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
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Observer(
                        builder: (_) => TextField(
                          keyboardType: TextInputType.visiblePassword,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(color: Colors.white),
                          //controller: passwordController,
                          onChanged: loginViewModel.setPass,
                          obscureText: true,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              labelText: 'Confirm Password',
                              errorText: loginViewModel
                                  .vendorloginViewModelErrorState.pass,
                              hintText: 'Confirm Password',
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
                    SizedBox(
                      height: 20,
                    ),
                    loginViewModel.isLoading
                        ? LinearProgressIndicator(
                            color: Colors.red,
                          )
                        : Container(),
                    ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF5D60F5)),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => SettingsUI()));
                        },
                        child: Container(
                            // color: Color(0xFF6B4668),
                            width: MediaQuery.of(context).size.width / 2,
                            padding: EdgeInsets.all(14),
                            child: Center(
                                child: Text('Sign Up',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1!
                                        .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ))))),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "or Login With",
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
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
                          "Already have an account?",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     new MaterialPageRoute(
                              //         builder: (BuildContext context) =>
                              //             LoginPageUI()));
                            },
                            child: Text(
                              'Log In',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      color: Color(0xFFA5C6F8)),
                            ))
                      ],
                    ),

                    Expanded(flex: 2, child: Container()),
                    //color: Colors.white,
                  ])),
            )));
  }
}
