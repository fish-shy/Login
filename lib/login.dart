import 'package:flutter/material.dart';
import 'package:lowgin/logic.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final myControllerUsername = TextEditingController();
  final myControllerPassword = TextEditingController();
  Logic logic = Logic();


  @override
  void dispose() {
    myControllerUsername.dispose();
    myControllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Padding(
       padding: const EdgeInsets.all(40),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Username'),
          TextField(controller: myControllerUsername,),
          const Text('Password'),
          TextField(controller: myControllerPassword,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Login
              FilledButton(onPressed: (){
                
                if(logic.login(myControllerUsername.text, myControllerPassword.text) == true)
                {showDialog(context: context, builder: (context){
                  return AlertDialog(
                    content: Text('Username: ${myControllerUsername.text} Password : ${myControllerPassword.text}'),
                  );
                }); }
                else{
                  showDialog(context: context, builder: (context){
                  return const AlertDialog(
                    content: Text('Wrong PAssword'),
                  );
                });
                }
              }, child: const Text('Login')),


              //Register
              FilledButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, '/register');
              }, child: const Text('register'))
            ],
          )
        ], 
      ) 
      )
    );
  }
}