import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String? email;
  String? password;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              child: Center(
                child: Text(
                  'BeSports',
                  style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold),
                ),
              ),
              flex: 1,
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        hintText: 'E-mail',
                        hintStyle: TextStyle(
                          fontSize:20
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(fontSize:25),
                      onChanged:(value){
                        email = value;
                      }
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontSize: 20
                        ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(width: 1, color: Colors.black),
                          )
                      ),
                      obscureText: true,
                      style: const TextStyle(fontSize:25),
                      onChanged: (value){
                        password = value;
                      },
                    ),
                  ),
                  const SizedBox(
                    height:70
                  ),
                  SizedBox(
                    width: double.infinity,
                    height:50,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith((states) => Colors.black),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                            )
                          )
                        ),
                        onPressed: (){print('로그인');}, child: const Text('로그인',style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold
                      ),),
                      )
                    ),
                  ),
                  const SizedBox(
                    height:30
                  ),
                  GestureDetector(
                    child: const Text('회원가입',style: TextStyle(
                      fontSize:20, fontWeight: FontWeight.bold
                    ),),
                    onTap:(){print('회원가입');}
                  )
                ],
              ),
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
