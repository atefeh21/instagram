import 'package:flutter/material.dart';
import 'package:instagram/style/text_style.dart';
import 'package:instagram/widgets/loading.dart';
import 'package:line_icons/line_icons.dart';
import '../../global/global_variable.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username;
  String password;
  bool _isLoading = false;
  String loginMessage = '';

  Widget loginButton() {
    return Container(
      child: ButtonTheme(
        minWidth: double.infinity,
        height: 50.0,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: Colors.white54),
          ),
          padding: EdgeInsets.fromLTRB(15, 13, 15, 15),
          onPressed: () async {
            // setState(() => _isLoading = true);
            var result = await authServiceInstance.login(username, password);
            if (result.status == 'success') {
              setState(() => _isLoading = false);
              Navigator.pop(context);
              print('logged in!');
              // SnackBarWidget()
              //     .snackBar('Success!', 'You are logged in', Colors.green[700]);
            } else {
              setState(() {
                _isLoading = false;
                loginMessage = 'Login Failed';
              });
            }
          },
          child: Text(
            'Log In',
            style: TextStyle(
              color: Colors.white60,
              // fontWeight: FontWeight.bold,
              fontSize: 20.0,
              fontFamily: 'NotoSansKR',
              letterSpacing: 1.0,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Loading()
        : Scaffold(
            body: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/bg_login.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Center(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.fromLTRB(15.0, 30, 15.0, 0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Instagram',
                          style: TextStyle(
                            fontFamily: 'LobsterTwo',
                            fontSize: 42.0,
                            letterSpacing: 1.0,
                            color: Colors.white,
                          ),
                        ),
                        Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 50.0),
                              TextFormField(
                                onChanged: (val) {
                                  setState(() => username = val);
                                },
                                decoration: GlobalTextStyle.loginTextFieldStyle
                                    .copyWith(labelText: 'Username'),
                              ),
                              SizedBox(height: 15.0),
                              TextFormField(
                                onChanged: (val) {
                                  setState(() => password = val);
                                },
                                decoration: GlobalTextStyle.loginTextFieldStyle
                                    .copyWith(labelText: 'Password'),
                              ),
                              SizedBox(height: 20.0),
                              loginButton(),
                              SizedBox(
                                height: 30.0,
                              ),
                              Text.rich(
                                TextSpan(
                                  text:
                                      'Forgot your login details?', // default text style
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' Get help signing in.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 12.0),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          left: 10.0, right: 20.0),
                                      child: Divider(
                                        color: Colors.white70,
                                        height: 36,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "OR",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'NotoSansKR',
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          left: 20.0, right: 10.0),
                                      child: Divider(
                                        color: Colors.white70,
                                        height: 36,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    LineIcons.facebook,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  Text(
                                    'Log in with Facebook',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'NotoSansKR',
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                loginMessage,
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
