import 'package:flutter/material.dart';
import '../styles/colors.dart';
import '../styles/fonts.dart';
import '../widgets/widgets_models.dart';
import 'login_screen.dart';

class Register_Screen extends StatefulWidget {
  const Register_Screen({Key? key}) : super(key: key);
  @override
  State<Register_Screen> createState() => _Register_ScreenState();
}

class _Register_ScreenState extends State<Register_Screen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: TextButton(
            onPressed:(){
              Navigator.pop(context,MaterialPageRoute(
                  builder: (context){
                    return Login_Screen();
                  }));
            },
            child: Text("Back",
              style: TextStyle(

                color: defultColor,
                fontFamily: defultFont,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  children:
                  [
                    Container(

                      alignment: Alignment.bottomLeft,
                       child:  Text('Sign Up',

                         style: TextStyle(
                           fontSize: 28.0,
                           fontWeight: FontWeight.bold,
                           color: Colors.black,
                         ),),


                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      child: Column(
                        children: [
                          // SizedBox(
                          //   height: 35.0,
                          // ),
                          Container(
                            child:Column(
                              children: [
                                FieldWidget(
                                  iconData: Icons.person,
                                  hintText: 'Enter your User name',
                                  labelText: 'User name',
                                  type: TextInputType.name,



                                ),
                                SizedBox(
                                  height: 18.0,
                                ),
                                FieldWidget(
                                  iconData:  Icons.email_outlined,
                                  hintText: 'Enter your email',
                                  labelText: 'Email',
                                  type: TextInputType.name,



                                ),
                                SizedBox(
                                  height: 18.0,
                                ),
                                FieldWidget(
                                  iconData: Icons.phone,
                                  hintText: 'Enter your Phone Number',
                                  labelText: ' Phone Number',
                                  type: TextInputType.phone,



                                ),
                                SizedBox(
                                  height: 18.0,
                                ),
                                FieldWidget(
                                  iconData:Icons.lock,
                                  hintText: 'Enter your password',
                                  labelText: 'password',
                                  type: TextInputType.name,
                                  suffixIcon: Icons.remove_red_eye_outlined,


                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    ButtonWidget(
                      text: 'CREATE',
                      fun: () {
                      },
                      backgroung:defultColor, colortext: Colors.white,
                    ),
                    SizedBox(
                      height: 22.0,
                    ),
                    accountLine(
                        onPressed: ()
                        {
                          NavigatorTo(context, Login_Screen());
                        },
                        colortext: defultColor,
                        textone: 'Already have an account? ',
                        texttwo: 'Sign In'),

                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
