import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login_desgin/login/bloc/bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginFormCard extends StatefulWidget {
  @override
  _LoginFormCardState createState() => _LoginFormCardState();
}

class _LoginFormCardState extends State<LoginFormCard> {
  LoginBloc _loginBloc;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    _loginBloc = BlocProvider.of<LoginBloc>(context);
    _emailController.addListener(_onEmailChanged);
    _passwordController.addListener(_onPasswordChanged);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: ScreenUtil.getInstance().setHeight(500),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, 15.0),
              blurRadius: 15.0),
          BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, -10.0),
              blurRadius: 10.0)
        ],
      ),
      child: BlocBuilder(
        bloc: _loginBloc,
        builder: (BuildContext context, LoginState state) {
          return Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 16.0),
            child: Form(

              child: ListView(
                children: <Widget>[
                  Text("Login",
                      style: TextStyle(
                          fontSize: ScreenUtil.getInstance().setSp(45),
                          fontFamily: "Poppins-Bold",
                          letterSpacing: 0.6)),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(30),
                  ),
                  Text("Username",
                      style: TextStyle(
                          fontFamily: "Poppins-Medium",
                          fontSize: ScreenUtil.getInstance().setSp(26))),
                  TextFormField(
                    controller: _emailController,
                    autovalidate: true,
                    autocorrect: false,
                    decoration: InputDecoration(
                        hintText: "username",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
                    validator: (_) {
                      return !state.isEmailValid ? 'Email is not Valid' : null;
                    },
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(30),
                  ),
                  Text("PassWord",
                      style: TextStyle(
                          fontFamily: "Poppins-Medium",
                          fontSize: ScreenUtil.getInstance().setSp(26))),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    autocorrect: false,
                    autovalidate: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
                    validator: (_){
                      return !state.isPasswordValid ? 'Pasword is not Valid' : null;

                    },
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(35),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Colors.blue,
                            fontFamily: "Poppins-Medium",
                            fontSize: ScreenUtil.getInstance().setSp(28)),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),

    );
  }


  @override
  void dispose() {
  }

  void _onEmailChanged() {
    _loginBloc.dispatch(ChangeEmailEvent(_emailController.text));
  }
  void _onPasswordChanged() {
    _loginBloc.dispatch(ChangePasswordEvent(_passwordController.text));
  }
}