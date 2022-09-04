import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget{
  const SignInPage({Key? key}) :super (key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage>{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build (BuildContext context){

    return Scaffold(

        body: Padding(

        padding: const EdgeInsets.all(10),
         child: ListView(
           children: <Widget>[
             const SizedBox(height: 20,),

             Image.asset("images/wom.jpg", height: 180, width: 90,),

             Container(
               padding: const EdgeInsets.all(10),
               child:  TextField(
                 controller: emailController,
                 decoration: const InputDecoration(
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(60))),
                   labelText: 'Email',
                   suffixIcon: Icon(Icons.mail),
                 ),
               ),
             ),

             Container(
               padding: const EdgeInsets.all(10),
               child: TextField(
                 controller: passwordController,
                 decoration:   InputDecoration(
                   border: const OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(60))),
                   labelText: 'Password ',
                   suffixIcon: IconButton(onPressed: (){},
                     icon: const Icon(Icons.remove_red_eye),),
                 ),
               ),
             ),

             Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[

                     TextButton(
                       onPressed: () {
                       },
                       child: const Text(
                         'Forget password ?',
                         style: TextStyle(fontSize: 20),
                       ),
                     ),
                     ElevatedButton(
                       style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                         RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(18.0),
                             side: const BorderSide(color: Colors.black38)
                         ),
                       )
                       ),
                       onPressed: () {
                         Navigator.pushNamed(context,'/homescreen');
                       },
                       child: const Text('Log in',
                         style: TextStyle(fontSize: 20),
                       ),
                     ),

                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     const Text('Does not have an account?'),
                     TextButton(
                       onPressed: () {
                         Navigator.pop(context);
                       },
                       child: const Text(
                         'Create Now',
                         style: TextStyle(fontSize: 20),
                       ),
                     )
                   ],
                 ),
               ],
             ),

             const SizedBox(height: 150,),


          Container(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                    height: 150,
                    width: 350,
                    child:  Expanded(
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text('Call us'),
                                Text('99999999', textAlign: TextAlign.start),
                              ],
                            ),
                            const SizedBox(height: 1, width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Email Us',textAlign: TextAlign.end),
                                Text('info@softmintindia.com'),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 1,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                const Text('Website'),
                                const Text('www.softmint.india', textAlign: TextAlign.start,),
                              ],
                            ),
                            const SizedBox(height: 1, width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                IconButton(onPressed: (){}, icon: const Icon(Icons.facebook))
                              ],
                            ),
                          ],
                        ),


                      ],
                    ),)
                  )

          ],
        ),
        ),
    );
  }
}