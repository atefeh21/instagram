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
  bool _visible = true;

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
            setState(() => _isLoading = true);
            var result = await authServiceInstance.login(username, password);
            if (result.code == 200) {
              setState(() => _isLoading = false);
              Navigator.pop(context);
              print('logged in!');
            } else {
              setState(() {
                _isLoading = false;
                loginMessage = result.msg;
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
                Background(),
                Center(
                  child: SingleChildScrollView(
                    // padding: EdgeInsets.fromLTRB(15.0, 30, 15.0, 0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(15.0, 30, 15.0, 0),
                          child: Column(
                            children: [
                              InstagramLogo(),
                              SizedBox(height: 50.0),
                              Text(
                                loginMessage,
                                style: TextStyle(
                                    fontSize: 15.0, color: Colors.white),
                              ),
                              SizedBox(height: 10.0),
                              Form(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    TextFormField(
                                      style: TextStyle(color: Colors.white),
                                      onChanged: (val) {
                                        setState(() => username = val);
                                      },
                                      onFieldSubmitted: (_) =>
                                          setState(() => _visible = true),
                                      onTap: () =>
                                          setState(() => _visible = false),
                                      decoration: GlobalTextStyle
                                          .loginTextFieldStyle
                                          .copyWith(labelText: 'Username'),
                                    ),
                                    SizedBox(height: 15.0),
                                    TextFormField(
                                      obscureText: true,
                                      style: TextStyle(
                                        color: Colors.white,
                                        letterSpacing: 1,
                                      ),
                                      onChanged: (val) {
                                        setState(() => password = val);
                                      },
                                      onFieldSubmitted: (_) =>
                                          setState(() => _visible = true),
                                      onTap: () =>
                                          setState(() => _visible = false),
                                      decoration: GlobalTextStyle
                                          .loginTextFieldStyle
                                          .copyWith(labelText: 'Password'),
                                    ),
                                    SizedBox(height: 20.0),
                                    loginButton(),
                                    SizedBox(
                                      height: 30.0,
                                    ),
                                  ],
                                ),
                              ),
                              ForgetLoginDetails(),
                              SizedBox(height: 12.0),
                              OrDivider(),
                              LoginWithFacebook(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                _visible == true ? Footer() : SizedBox.shrink(),
              ],
            ),
          );
  }
}

class InstagramLogo extends StatelessWidget {
  const InstagramLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Instagram',
      style: TextStyle(
        fontFamily: 'LobsterTwo',
        fontSize: 42.0,
        letterSpacing: 1.0,
        color: Colors.white,
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg_login.jpg'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 5.0, right: 10.0),
            child: Divider(
              color: Colors.white60,
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
            margin: const EdgeInsets.only(left: 10.0, right: 5.0),
            child: Divider(
              color: Colors.white60,
              height: 36,
            ),
          ),
        ),
      ],
    );
  }
}

class ForgetLoginDetails extends StatelessWidget {
  const ForgetLoginDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Forgot your login details?', // default text style
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
    );
  }
}

class LoginWithFacebook extends StatelessWidget {
  const LoginWithFacebook({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          height: 57,
          color: Colors.white24,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account?',
                style: TextStyle(color: Colors.white70),
              ),
              FlatButton(
                onPressed: () => {},
                child: Text(
                  'Sign up.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
