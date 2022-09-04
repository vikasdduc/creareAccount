import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key }) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Create New Account',style: TextStyle(fontSize: 20,color: Colors.white)),
        leading: IconButton( onPressed: () { },
          icon: const Icon(Icons.arrow_back, color: Colors.white,),),
      ),

      body: Padding(

        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              child:  TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0))),
                  labelText: 'Your Name',
                  suffixIcon: Icon(Icons.mail),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child:  TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0))),
                  labelText: 'Firm Name',
                  suffixIcon: Icon(Icons.mail),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child:  TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0))),
                  labelText: 'Mobile',
                  suffixIcon: Icon(Icons.mail),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child:  TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0))),
                  labelText: 'Address',
                  suffixIcon: Icon(Icons.mail),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child:  TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0))),
                  labelText: 'City',
                  suffixIcon: Icon(Icons.mail),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child:  TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0))),
                  labelText: 'District',
                  suffixIcon: Icon(Icons.mail),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child:  TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0))),
                  labelText: 'State',
                  suffixIcon: Icon(Icons.mail),
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.all(10),
              child:  TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0))),
                  labelText: 'PinCode',
                  suffixIcon: Icon(Icons.mail),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child:  TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0))),
                  labelText: 'Pan',
                  suffixIcon: Icon(Icons.mail),
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.all(10),
              child:  TextField(
                controller: usernameController,
                decoration: const  InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    labelText: 'Enter Aadhar Number ',
                    suffixIcon: Icon(Icons.supervisor_account)
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: ElevatedButton(
                style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: const BorderSide(color: Colors.black38)
                  ),
                )
                ),
                onPressed: () {  },
                child: const Text('Create Account',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Have an account?'),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/onloginpage');
                  },
                  child: const Text(
                    'Log in',
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),

          ],

        ),
      ),
    );
  }
}