import 'package:app_jam/components/myButton.dart';
import 'package:app_jam/components/my_textfield.dart';
import 'package:app_jam/sq_tile.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   LoginPage({ Key? key }) : super(key: key);
  final usernameController=TextEditingController();
  final passwordController=TextEditingController();

  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[300],

      body:SafeArea(
        child: Column(
         children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(height: 45),
         
              Icon(Icons.lock,
              size: 100,
              
              ),
         
              SizedBox(height: 45),
            ],
          ),

          Text(
                    'H O Ş G E L D İ N İ Z ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 25),

                  //username textfield
                  MyTextField(
                    controller: usernameController,
                    hintText: 'Kullanıcı Adı',
                    obscureText: false,
                  ),

                  //password textfield
                  const SizedBox(height: 10),
                  
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Şifre',
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),
                  //forgot password
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Şifreni Mi Unuttun?',
                        style: TextStyle(color: Colors.grey.shade600),),
                      ],
                    ),
                  ),
                 const SizedBox(height: 15),

                 //Sign In Button
                 MyButton(
                  onTap: signUserIn,
                 ),

                 const SizedBox(height: 50,),

                 Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Devam Et',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

               const SizedBox(height: 50),

              // google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [

                      ]),
                    ]),
                  ),
                  );
  }
  }