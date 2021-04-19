import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maths_app/screens/screens.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: size.height / 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome To My Maths Quiz',
                  style: GoogleFonts.lato(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800]
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, _, __) => Level1(),
                      transitionDuration: Duration(seconds: 0)
                    )
                  ),
                  child: Text(
                    'Start',
                    style: GoogleFonts.lato(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800]
                    ),
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
