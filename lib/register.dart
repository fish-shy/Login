import 'package:flutter/material.dart';
import 'package:lowgin/logic.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

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
    return  Scaffold(
       backgroundColor: Colors.grey[300],
    
      body: Padding(
       padding: const EdgeInsets.all(40),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          //Register Input
          const Text('Register' , style: TextStyle(
            fontSize: 35,
            color: Colors.blue,
          ),),

          //Username Input
          const SizedBox(height: 30,),
          TextField(controller: myControllerUsername,
            decoration:const InputDecoration(
              label: Text('Username'),
              fillColor: Colors.blue
          ),
          ),
          TextField(controller: myControllerPassword,
            keyboardType: TextInputType.none,
            decoration:const InputDecoration(
              label: Text('Password'),
              fillColor: Colors.blue,
              hoverColor: Colors.blue,
             ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(onPressed: (){
                logic.setPassword(myControllerPassword.text);
                logic.setUsername(myControllerUsername.text);
                Navigator.pushReplacementNamed(context, '/login');
              }, child: const Text('Register')),
              FilledButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, '/login');
              }, child: const Text('Login'))
            ],
          )
        ], 
      ) 
      )
    );
  }
}