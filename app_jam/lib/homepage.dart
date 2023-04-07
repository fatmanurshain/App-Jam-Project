import 'package:app_jam/responsive/desktop_body.dart';
import 'package:app_jam/responsive/mobile_body.dart';
import 'package:app_jam/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: ResponsiveLayout(
      mobileBody: const MyMobileBody(), 
      desktopBody: const MyDesktopBody(),
      )
    );
  }
}