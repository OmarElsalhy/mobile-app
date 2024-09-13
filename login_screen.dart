import 'package:flutter/material.dart';
import '../styles/colors.dart';
import '../styles/fonts.dart';
import '../users_information/register_screen.dart';
import '../widgets/widgets_models.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 25.0,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            'Let \'s Get Started',
                            style: TextStyle(
                              fontSize: 27,
                              color: defultColor,
                              fontWeight: FontWeight.bold,
                              fontFamily: defultFont,
                            ),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            'Log in to  your existant account of Q Allure',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                              fontFamily: defultFont,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80.0,
                    ),
                    Container(
                      child: Column(
                        children: [
                          FieldWidget(
                            iconData: Icons.email_outlined,
                            hintText: 'Enter your email',
                            labelText: 'Email',
                            type: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: 18.0,
                          ),
                          FieldWidget(
                            iconData: Icons.lock,
                            hintText: 'Enter your password',
                            labelText: 'password',
                            type: TextInputType.visiblePassword,
                            suffixIcon: Icons.remove_red_eye_outlined,
                          ),
                        ],
                      ),
                    ),
                    Container(
                        alignment: Alignment.bottomRight,
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            'Forget password?',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 10.0,
                    ),
                    ButtonWidget(
                      text: 'Sign In',
                      fun: () {},
                      backgroung: defultColor,
                      colortext: Colors.white,
                    ),
                    SizedBox(
                      height: 19.0,
                    ),
                    Container(
                      child: Text(
                        'Or connect using',
                        style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Amina(
                              backgroung: Colors.indigoAccent,
                              fun: () {},
                              text: "Facebook",
                              image: '../../assets/images/facebook.png'),
                          Amina(
                              backgroung: Colors.red,
                              fun: () {},
                              text: "Google",
                              image: '../../assets/images/google.png'),
                          //                   Container(
                          //     child: MaterialButton(
                          //       minWidth: 130.0,
                          //         onPressed: (){},
                          //       color: Colors.indigo,
                          //       shape: RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(10.0),
                          //       ),
                          //       child: Row(
                          //         children: [
                          //           Image(image: AssetImage('assets/images/facebook.png'
                          //           ),
                          //             height: 20.0,
                          //             width: 20.0,
                          //           ),
                          //           SizedBox(
                          //             width: 10.0,
                          //           ),
                          //           Text('Facebook',
                          //             style: TextStyle(
                          //                 fontWeight: FontWeight.bold,
                          //                 color: Colors.white
                          //             ),),
                          //
                          //         ],
                          //       ),
                          //     ),
                          // ),
                          //                   Container(
                          //       child:MaterialButton(
                          //           minWidth: 130.0,
                          //           onPressed: (){
                          //
                          //
                          //           },
                          //           color: Colors.red.shade800,
                          //           shape: RoundedRectangleBorder(
                          //             borderRadius: BorderRadius.circular(10.0),
                          //           ),
                          //           child: Row(
                          //             children: [
                          //               Image(image: AssetImage('assets/images/google.png'
                          //               ),
                          //                 height: 20.0,
                          //                 width: 20.0,
                          //               ),
                          //               SizedBox(
                          //                 width: 10.0,
                          //               ),
                          //               Text('Google',
                          //                 style: TextStyle(
                          //                     fontWeight: FontWeight.bold,
                          //                     color: Colors.white
                          //                 ),),
                          //             ],
                          //           ))
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    accountLine(
                        onPressed: () {
                          NavigatorTo(context, Register_Screen());
                        },
                        colortext: defultColor,
                        textone: 'Don\'t have an account? ',
                        texttwo: 'Sign Up'),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
