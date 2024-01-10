import 'package:ecommerce_app_backend/features/auth/screens/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        child: Container(
          color: Color(0xffffffff),
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                 Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center, 

                    children:<Widget>[
                      Container(
                       height: 300,
                      width: 290,
                      child: Image.asset('assets/images/first.png'),
                    ),
                    
                    
                    
                    ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children:<Widget>[
            Container(
                      width: 270,
                      child:Text(
                      "Algeria’s No 1 Ecommerce Store",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.plusJakartaSans(
                  fontSize: 20,
                  color: Color(0xFF1B1A1A),
                  fontWeight: FontWeight.w700,
                      ),
                    ),
                    ),]
          ),
          
        
               
                    SizedBox(
                      height: 200,
                    ),
                    Container(
                      height: 60,
                      width: 350,
                      child: ElevatedButton(
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 20,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                          
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape:  RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              ),),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (ctx) =>const AuthScreen() ));
                        },
                      ),
                    ),
              
            ],
          ),
        ),
      ),
    );
  }
}
